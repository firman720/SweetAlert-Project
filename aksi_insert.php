<?php
	session_start();
	include"config.php";

	if(isset($_POST['insert'])){
		$nama     = $_POST['nama'];
		$email    = $_POST['email'];
		$username = $_POST['username'];
		$jabatan  = $_POST['jabatan'];

		if($nama!="" || $email!="" || $username!="" || $jabatan!=""){
			//
			$insert = mysql_query("INSERT INTO user
								   VALUES('','$nama','$email','$username','".SHA1($username)."','$jabatan')");
			if($insert){
				$_SESSION['info'] = 'Disimpan';
				echo "<script>document.location.href='index.php'</script>";
			}else{
				$_SESSION['info'] = 'Gagal Disimpan';
				echo "<script>document.location.href='index.php'</script>";
			}

		}else{
			//jika data kosong
			$_SESSION['info'] = 'Kosong';
			echo "<script>document.location.href='index.php'</script>";
		}

	}
?>