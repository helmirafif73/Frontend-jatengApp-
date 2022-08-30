<?php
session_start();
  
  $user = "localhost";
  $name = "root";
  $pass = "";
  $dbname = "inventori";
 
  $con = mysqli_connect($user,$name,$pass,$dbname);
 
  if (!$con){
    die ("Database Tidak Ada : " . mysqli_connect_error());
  }
$kueri = mysqli_query($con, "SELECT * FROM users");
 
  $data = array ();
  while (($row = mysqli_fetch_array($kueri)) != null){
    $data[] = $row;
  }
    $cont = count ($data);
    $jml = "".$cont;

    $kueri2 = mysqli_query($con, "SELECT * FROM barang_masuk");
 
  $data2 = array ();
  while (($row = mysqli_fetch_array($kueri2)) != null){
    $data2[] = $row;
  }
    $cont2 = count ($data2);
    $jml2 = "".$cont2;


  $kueri3 = mysqli_query($con, "SELECT * FROM barang_keluar");
 
  $data3 = array ();
  while (($row = mysqli_fetch_array($kueri3)) != null){
    $data3[] = $row;
  }
    $cont3 = count ($data3);
    $jml3 = "".$cont3; 


  $kueri4 = mysqli_query($con, "SELECT * FROM gudang");
 
  $data4 = array ();
  while (($row = mysqli_fetch_array($kueri4)) != null){
    $data4[] = $row;
  }
    $cont4 = count ($data4);
	$jml4 = "".$cont4;

	$kueri5 = mysqli_query($con, "SELECT * FROM permintaan");
 
  $data5 = array ();
  while (($row = mysqli_fetch_array($kueri5)) != null){
    $data5[] = $row;
  }
    $cont5 = count ($data5);
    $jml5 = "".$cont5;


if( !isset($_SESSION['admin']) )
{
  header('location:./../'.$_SESSION['akses']);
  exit();
}

$nama = ( isset($_SESSION['user']) ) ? $_SESSION['user'] : '';
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Beranda</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!--Import Google Icon Font-->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="../fonts/material.css" rel="stylesheet">
    <!--Import materialize.css-->
	<link type="text/css" rel="stylesheet" href="../css/materialize.min.css"  media="screen,projection"/>
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <!--Let browser know website is optimized for mobile-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	<style>
		html,body{
		padding: 0;
		margin:0;
		font-family: "Helvetica Neue",Helvetica,Roboto,Arial,sans-serif;;
	}

	.menu-malasngoding{
		background-color: red;
	}

	.menu-malasngoding ul {
		list-style-type: none;
		margin: 0;
		padding: 0;
		overflow: hidden;
	}

	.menu-malasngoding > ul > li {
		float: left;
	}

	.menu-malasngoding li a {
		display: inline-block;
		color: white;
		text-align: center;
		padding: 26px 29px;
		text-decoration: none;
	}

	.menu-malasngoding li a:hover{
		background-color: none;
	}

	li.dropdown {
		display: inline-block;
	}

	.dropdown:hover .isi-dropdown {
		display: block;
	}

	.isi-dropdown a:hover {
		color: black!important;
	}

	.isi-dropdown {
		position: absolute;
		display: none;
		box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
		z-index: 1;
		background-color: white;
	}
	.top-nav{
		background-color: black;
	}
	.isi-dropdown a {
	color: black !important;
	}	
	.h1{
		  font-size: 32px;
		  color : black;
  	}
  	.footer{
		  font-size: 12px;
		  color : black;
	  }
	.h2{
		font-size : 25px;
		color : black;
	  }
	.h3{
		font-size : 16;
		color : black;
		font-family: "Arial Black", Gadget, sans-serif;

	}
	.p{
		font-size : 25px;
		color : black;
		font-family: Arial, Helvetica, sans-serif	
	}
	.isi-dropdown a:hover {
	color: white !important;
	background: #0033A0!important;
	}
	.notification {
	background-color: white;
	color: white;
	text-decoration: none;
	padding: 10px 20px;
	position: relative;
	display: inline-block;
	border-radius: 0px;
	}

	.notification:hover {
	background: white;
	}

	.notification .badge {
	position: absolute;
	top: 0px;
	right: 0px;
	padding: 8px 8px;
	border-radius: 50%;
	background-color: white;
	color: #0033A0;
	}
	
</style>
</head>
<body>
	<header class="header">
		<div class="menu-malasngoding">
			<ul>
				
			<li>
			<div class="container">
				</div>
				<a href="index.php"><i class="material-icons left">home</i></a><li>
				<li><a href="receipt.php"><i class="material-icons left">receipt</i></a><li>
				<li><a href="transaksi.php"><i class="material-icons left">schedule</i></a><li>
				<li><a href="statistik.php"><i class="material-icons left">list</i></a><li>
				<li class="dropdown"><a class="large blue-text name"><i class="material-icons left">person</i></a>
					<ul class="isi-dropdown">
						<li><a href="profil.php"> Profile</a></li>
						<li><a href="../logout.php"> Logout</a></li>
					</ul>
				</li>
			</ul>
			</ul>
		</div>
		<ul>
				<nav class="row top-nav white ">
						<div class="h3" align="center" font="19"><i class="material-icons center">notifications</i> Dasboard</div>	
				</nav>
			</ul>
	</header>
		<main>

		</main>

	</header>
		<!--end of header-->

		<!--content-->
	 <!--end of content-->
	<script type="text/javascript" src="../js/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="../js/materialize.min.js"></script>
	<script type="text/javascript">
	  	$(document).ready(function(){
	    	$('.collapsible').collapsible();
	    	$(".button-collapse").sideNav();
		});
	</script>
	<script>
	function myFunction() {
	var x = document.getElementById("Demo");
	if (x.className.indexOf("w3-show") == -1) { 
		x.className += " w3-show";
	} else {
		x.className = x.className.replace(" w3-show", "");
	}
	}
	</script>
	<script>
	function myAccFunc() {
	var x = document.getElementById("demoAcc");
	if (x.className.indexOf("w3-show") == -1) {
		x.className += " w3-show";
		x.previousElementSibling.className += " w3-green";
	} else { 
		x.className = x.className.replace(" w3-show", "");
		x.previousElementSibling.className = 
		x.previousElementSibling.className.replace(" w3-green", "");
	}
	}
	</script>
	<script>
		function myDropFunc() {
	var x = document.getElementById("demoDrop");
	if (x.className.indexOf("w3-show") == -1) {
		x.className += " w3-show";
		x.previousElementSibling.className += " w3-green";
	} else { 
		x.className = x.className.replace(" w3-show", "");
		x.previousElementSibling.className = 
		x.previousElementSibling.className.replace(" w3-green", "");
	}
	}
	</script>
</body>
</html>