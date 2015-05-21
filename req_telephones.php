<?php
	require_once 'class.database.php';
	function TelephoneNormalize($telephone_raw=NULL, $country_code='FR'){
		/*
		+33147200001
		0147200001
		0033147200001
		01.47.20.00.01
		+33.1.47.20.00.01
		*/

		$telephone_formated = $telephone_raw;
		$current_country_code = $country_code;

		if(!empty($telephone_raw)){
			$telephone_raw_length = strlen($telephone_raw);
			//2 letters ISO Country Code (stored in database)
			$current_country_code = strtoupper(substr($country_code, 0, 2));
			
			$search_only_numbers = '#[^0-9]#';
			//remove everyithing else that number in the telephone number
			$telephone_with_numbers_only = preg_replace($search_only_numbers, '', $telephone_raw);
			
			//Source 1 : http://www.wtng.info/wtng-cod.html
			//Source 2 : http://en.wikipedia.org/wiki/List_of_country_calling_codes
			
			$query = 'SELECT countries_code, countries_telephone_international_dialling_code, countries_telephone_local_length, countries_telephone_trunk_prefix
			FROM countries WHERE countries_code=:countries_code';
			$param = array(':countries_code' => $current_country_code);
			$val = Database::GetInstance()->FetchOne($query, $param);
			if(isset($val['countries_telephone_international_dialling_code'])){
				if(!empty($val['countries_telephone_local_length'])){
					$international_dialling_code = $val['countries_telephone_international_dialling_code'];//get the dialling code (like +33)
					#region International number or number with characters
					//It's an international number or a number with characters
					if($telephone_raw_length > $val['countries_telephone_local_length']){
						//Initalization
						$dialling_code_length = strlen($international_dialling_code);
						$positionPlusDiallingcode = strpos($telephone_raw, '+', 0);//starts with +xx
						$positionDoubleZero = strpos($telephone_raw, '00', 0);//starts with 00xx
						
						#region International number starting with +xx (ex: +33)
						if($positionPlusDiallingcode!==FALSE && $positionPlusDiallingcode==0){
							$telephone_formated = '+'.$telephone_with_numbers_only;
						}//if
						#endregion

						#region Inernational number starting with 00 (ex: 0033)
						elseif($positionDoubleZero!==FALSE && $positionDoubleZero==0){
							$telephone_formated = '+'.substr($telephone_with_numbers_only, 2);
						}//if
						#endregion

						#region Local telephone number with other characters
						else{
							//Get Trunk Prefix (usually : 0)
							$trunk_prefix = NULL;
							if(!empty($val['countries_telephone_trunk_prefix']))
								$trunk_prefix = $val['countries_telephone_trunk_prefix'];
							
							//Remove trunk prefix in local numbers (ex: 0 in 04.12.34.56.78)
							if(substr($telephone_with_numbers_only, 0, 1)=='0' || substr($telephone_with_numbers_only, 0, 1)==$trunk_prefix){
								$telephone_formated = $international_dialling_code.substr($telephone_with_numbers_only, 1);
							}//if
							else{
								$telephone_formated = $international_dialling_code.$telephone_with_numbers_only;
							}//else
						}//else
						#endregion

					}//if
					#endregion

					#region Local number
					//It's a local number, like : 0147200001
					else{
						//Begins by 0, like : 0147200001
						if(substr($telephone_with_numbers_only, 0, 1)=='0'){
							$telephone_formated = $international_dialling_code.substr($telephone_with_numbers_only, 1);
						}//if
						//Begins with something else than zero
						else{
							$telephone_formated = $international_dialling_code.$telephone_with_numbers_only;
						}//else
					}//else
					#endregion
				}//if
			}//if

		}//if
		return $telephone_formated;
	} 