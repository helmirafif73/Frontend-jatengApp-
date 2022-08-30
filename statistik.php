<?php session_start();

$user = "localhost";
$name = "root";
$pass = "";
$dbname = "inventori";

$con = mysqli_connect($user,$name,$pass,$dbname);

if (!$con){
  die ("Database Tidak Ada : " . mysqli_connect_error());
}

include_once("../config.php");
$result = mysqli_query($koneksi, "SELECT * FROM users WHERE id_pgw = 001");

if( !isset($_SESSION['admin']) )
{
  header('location:./../'.$_SESSION['akses']);
  exit();
}

$nama = ( isset($_SESSION['user']) ) ? $_SESSION['user'] : '';

	$kueri5 = mysqli_query($con, "SELECT * FROM permintaan");
	
	$data5 = array ();
	while (($row = mysqli_fetch_array($kueri5)) != null){
	$data5[] = $row;
	}
	$cont5 = count ($data5);
	$jml5 = "".$cont5;
?>
<!DOCTYPE html>
<html>
<head>
	<title>Halaman Admin</title>
	<!--Import Google Icon Font-->
    <link href="../fonts/material.css" rel="stylesheet">
    <!--Import materialize.css-->
    <link type="text/css" rel="stylesheet" href="../css/materialize.min.css"  media="screen,projection"/>
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
				<<a href="index.php"><i class="material-icons left">home</i></a><li>
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
						<div class="h3" align="center" font="19"> statistik</div>	
				</nav>
			</ul>
	</header>
	</header>
		
		</main>
        <!--end of content-->


	</div>

	<script type="text/javascript" src="../js/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="../js/materialize.min.js"></script>
	<script type="text/javascript">
	  	$(document).ready(function(){
	    	$('.collapsible').collapsible();
	    	$(".button-collapse").sideNav();
		});
	</script>
	<script>
        $(".hapus").click(function () {
        var jawab = confirm("Anda Yakin Ingin Menghapus User ?");
        if (jawab === true) {
        // konfirmasi
            var hapus = false;
            if (!hapus) {
                hapus = true;
                $.post('delete.php', {id: $(this).attr('data-id')},
                function (data) {
                    alert(data);
                });
                hapus = false;
            }
        } else {
            return false;
        }
        });
      </script>
</body>
</html>