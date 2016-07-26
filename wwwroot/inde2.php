<?php	
	$servername = "127.0.0.1";
	$username = "root";
	$password = "314233";
	$dbname = "vip";
	$conn = new mysqli($servername, $username, $password, $dbname);
	$conn->query('call addmyfamily()');