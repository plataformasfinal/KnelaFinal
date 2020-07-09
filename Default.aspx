<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE HTML>
<!--
	Massively by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>Massively by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="css/main.css" />
		<noscript><link rel="stylesheet" href="css/noscript.css" /></noscript>
	</head>
	<body class="is-preload">

		<form id="form1" runat="server">

		<!-- Wrapper -->
			<div id="wrapper" class="fade-in">

				<!-- Intro -->
					<div id="intro">
						<h1><br />
						KNELA</h1>
						<p> Pasteleria 100% Cusqueña 
							que utiliza los ingredientes más frescos en todos nuestros pasteles y comida caseros, ¡ Hechos a mano Desde cero !</p>
						<ul class="actions">
							<li><a href="#header" class="button icon solid solo fa-arrow-down scrolly">Continue</a></li>
						</ul>
					</div>

				<!-- Header -->
					<header id="header">
						<a href="Default.aspx" class="logo">Knela</a>
					</header>

				<!-- Nav -->
					<nav id="nav">
						<ul class="links">
							<li class="active"><a href="Default.aspx">Pagina Principal</a></li>
							
							
                            <li><a href="Pedido.aspx">Pedido</a></li>
                            <li ><a href="CambiarContraUs.aspx">Cambiar Contraseña</a></li>
						</ul>
						<ul class="icons">
							<li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
							<li><a href="#" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
							<li><a href="#" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
							<li><a href="#" class="icon brands fa-github"><span class="label">GitHub</span></a></li>
						</ul>
					</nav>

				<!-- Main -->
					<div id="main">

						<!-- Featured Post -->
                       
							<article class="post featured">

								<header class="major">
                                    <div style="text-align: right">
                                    <<asp:Button ID="btncerrarcesion" runat="server" Text="Cerrar Cesion" PostBackUrl="~/Login.aspx" /><br />
                                    </div>
                                      
									<h2><a href="#">¿Quienes somos?
                                       
								    </a></h2>
									<p>Somos Knela una pasteleria con mas de 10 años de experiencia<br />
									Nuestro objetivo es ser una marca líder y confiable para nuestros consumidores.  <br />
									Logrando ser el proveedor preferido de nuestros clientes por la calidad y variedad de nuestros productos y sobretodo el buen servicio..</p>
								</header>
								<a href="#" class="image main"><img src="images/pic01.jpg" alt="" /></a>
								<ul class="actions special">
									<li><a href="#" class="button large">Especialidades</a></li>
								</ul>
							</article>

						<!-- Posts -->
							<section class="posts">
								<article>
									<header>
										<span class="date">April 24, 2017</span>
										<h2><a href="#">Muffins<br />
										de Chocolate</a></h2>
									</header>
									<a href="#" class="image fit"><img src="images/pic02.jpg" alt="" /></a>
									<p>Postre de chocolate</p>
									<ul class="actions special">
										<li><a href="#" class="button" >Comprar</a></li>
									</ul>
								</article>
								<article>
									<header>
										<span class="date">April 22, 2017</span>
										<h2><a href="#">Pan<br />
										Baguette</a></h2>
									</header>
									<a href="#" class="image fit"><img src="images/pic03.jpg" alt="" /></a>
									<p>Pan de trigo</p>
									<ul class="actions special">
										<li><a href="#" class="button">Comprar</a></li>
									</ul>
								</article>
								<article>
									<header>
										<span class="date">April 18, 2017</span>
										<h2><a href="#">Crocante<br />
										Croissant</a></h2>
									</header>
									<a href="#" class="image fit"><img src="images/pic04.jpg" alt="" /></a>
									<p>Delicioso pan de Yema </p>
									<ul class="actions special">
										<li><a href="#" class="button">Comprar</a></li>
									</ul>
								</article>
								<article>
									<header>
										<span class="date">April 14, 2017</span>
										<h2><a href="#">Mousse<br />
										de Sauco</a></h2>
									</header>
									<a href="#" class="image fit"><img src="images/pic05.jpg" alt="" /></a>
									<p>Chocalate con crema.</p>
									<ul class="actions special">
										<li><a href="#" class="button">Comprar</a></li>
									</ul>
								</article>
								<article>
									<header>
										<span class="date">April 11, 2017</span>
										<h2><a href="#">Torta<br />
										de Vainilla</a></h2>
									</header>
									<a href="#" class="image fit"><img src="images/pic06.jpg" alt="" /></a>
									<p>Postre con crema.</p>
									<ul class="actions special">
										<li><a href="#" class="button">Comprar</a></li>
									</ul>
								</article>
								<article>
									<header>
										<span class="date">April 7, 2017</span>
										<h2><a href="#">Pie<br />
										de Manzana</a></h2>
									</header>
									<a href="#" class="image fit"><img src="images/pic07.jpg" alt="" /></a>
									<p>Postre dulce, hecho a base de Manzana.</p>
									<ul class="actions special">
										<li><a href="#" class="button">Comprar</a></li>
									</ul>
								</article>
							</section>

						<!-- Footer -->
							

					</div>

				

				<!-- Copyright -->
					<div id="copyright">
						<ul><li>&copy; Untitled</li><li>Design: <a href="https://html5up.net">HTML5 UP</a></li></ul>
					</div>

			</div>

		<!-- Scripts -->
			<script src="js/jquery.min.js"></script>
			<script src="js/jquery.scrollex.min.js"></script>
			<script src="js/jquery.scrolly.min.js"></script>
			<script src="js/browser.min.js"></script>
			<script src="js/breakpoints.min.js"></script>
			<script src="js/util.js"></script>
			<script src="js/main.js"></script>

	    </form>

	</body>
</html>
