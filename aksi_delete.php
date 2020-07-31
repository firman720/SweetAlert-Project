<?php
	session_start();
	include"config.php";

	if($_GET['id']!=""){
		$id = $_GET['id'];
		$del = mysql_query("DELETE FROM user WHERE usr_id='$id'");
		if($del){
			$_SESSION['info'] = 'Dihapus';
			echo "<script>document.location.href='index.php'</script>";
		}else{
			$_SESSION['info'] = 'Gagal Dihapus';
			echo "<script>document.location.href='index.php'</script>";
		}
	}
?>