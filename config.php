<?php 
error_reporting(0);
define('host', 'localhost');
define('user', 'root');
define('pass', '');
define('db', 'brodcast');
date_default_timezone_set("Asia/Jakarta");

$conn = mysql_connect(host,user,pass,db) or die(mysql_error());

if ($conn) {
	mysql_select_db(db,$conn);
} else {
	echo "Data Base Tidak Ada!";
}

?>