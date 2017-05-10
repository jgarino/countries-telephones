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

		$telephone_raw = trim($telephone_raw);
		$telephone_formated = $telephone_raw;
		$current_country_code = $country_code;

		if(!empty($telephone_raw)){
			$telephone_raw_length = strlen($telephone_raw);
			$current_country_code = strtoupper(substr($country_code, 0, 2));
			
			$search_only_numbers = '#[^+0-9]#';
			//remove everyithing else that number
			$telephone_with_numbers_only = preg_replace($search_only_numbers, '', $telephone_raw);
			$telephone_length_with_numbers_only = strlen($telephone_with_numbers_only);
			
			//Source 1 : http://www.wtng.info/wtng-cod.html
			//Source 2 : http://en.wikipedia.org/wiki/List_of_country_calling_codes
			
			$query = 'SELECT SQL_CACHE countries_code, countries_telephone_international_dialling_code, countries_telephone_trunk_prefix, countries_telephone_local_length
		FROM countries WHERE countries_code=:countries_code';
			$param = array(':countries_code' => SqlPreventInjection($current_country_code));
			$val = Database::GetInstance()->FetchOne($query, $param);
			if(isset($val['countries_telephone_international_dialling_code'])){
				#region International Dialing Code
				$international_dialling_code_plusXX = $val['countries_telephone_international_dialling_code'];//+33
				$international_dialling_code_00XX = str_replace('+', '00', $val['countries_telephone_international_dialling_code']);//0033
				$international_dialling_code_XX = str_replace('+', '', $val['countries_telephone_international_dialling_code']);//33
				#endregion

				#region Get Trunk Prefix (usually : 0)
				$trunk_prefix = NULL;
				$trunk_prefix_length = 0;
				if(!is_null($val['countries_telephone_trunk_prefix'])){
					$trunk_prefix = $val['countries_telephone_trunk_prefix'];
					$trunk_prefix_length = strlen($trunk_prefix);
				}//if
				#endregion
				
				if(!empty($val['countries_telephone_local_length'])){

					#region It's an international number or number with characters
					//International number = starts with +xx or 00xx
					$startsWithPlusXX = strpos($telephone_with_numbers_only, $international_dialling_code_plusXX);
					$startsWith00XX = strpos($telephone_with_numbers_only, $international_dialling_code_00XX);
					$startsWithXX = strpos($telephone_with_numbers_only, $international_dialling_code_XX);
					
					//echo 'Positions ['.$international_dialling_code_plusXX.'] : +XX['.$startsWithPlusXX.'] 00XX['.$startsWith00XX.'] XX['.$startsWithXX.']<br />';
					
					$local_telephone_number = $telephone_with_numbers_only;

					if($startsWithPlusXX !== FALSE && $startsWithPlusXX==0){
						//$local_telephone_number = str_replace($international_dialling_code_plusXX, '', $telephone_with_numbers_only);
						$local_telephone_number = preg_replace('#^\\'.$international_dialling_code_plusXX.'#', '', $telephone_with_numbers_only, 1);
					}//if
					elseif($startsWith00XX !== FALSE && $startsWith00XX==0){
						//$local_telephone_number = str_replace($international_dialling_code_00XX, '', $telephone_with_numbers_only);
						$local_telephone_number = preg_replace('#^\\'.$international_dialling_code_00XX.'#', '', $telephone_with_numbers_only, 1);
					}//else
					elseif($startsWithXX !== FALSE && $startsWithXX==0){
						//$local_telephone_number = str_replace($international_dialling_code_XX, '', $telephone_with_numbers_only);
						$local_telephone_number = preg_replace('#^\\'.$international_dialling_code_XX.'#', '', $telephone_with_numbers_only, 1);
						//echo 'local tel : '.$local_telephone_number.'<br />';
					}//else
					#endregion
					
					#region Remove Trunk
					if(strlen($local_telephone_number) >= $val['countries_telephone_local_length']){
						$local_telephone_number = preg_replace('#^'.$trunk_prefix.'#', '', $local_telephone_number, 1);
					}//if
					#endregion
					
					$telephone_formated = $international_dialling_code_plusXX . $local_telephone_number;
					
				}//if
			}//if

		}//if

		return $telephone_formated;
	} 
