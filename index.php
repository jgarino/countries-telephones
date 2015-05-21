<?php

echo "
<html>
<head>
	<title>Test Telephone Normalization</title>
</head>
<body>
<h2>Main goal : have nice international telephone numbers stored in your database !</h2><br />
<hr />
Settings :<br />
<ol>
<li>Import the table in your Database</li>
<li>Configure the class.database.php library to match your SQL connection</li>
<li>Click on the Test BUTTON</li>
</ol>

<form action='index.php' methode='post'>
	<input type='submit' name='btnSubmit' value='TEST' />
</form>

";

if(isset($_POST['btnSubmit'])){
	require_once 'req_telephones.php';
	
	$array = array('+33.1.47.20.00.01', '0033.1.47.20.00.01', '01.47.20.00.01', '+33(0)1.47.20.00.01', '0147200001');

foreach($array as $num)
	echo $num.' => '.TelephoneNormalize($num, 'FR').'<br />';

}//if POST


echo "</body></html>";