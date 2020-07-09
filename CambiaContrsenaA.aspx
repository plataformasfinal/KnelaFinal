<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CambiaContrsenaA.aspx.cs" Inherits="CambiaContrseñaA" %>

<!DOCTYPE HTML>
<!--
	Massively by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>Generic Page - Massively by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="css/main.css" />
		<noscript><link rel="stylesheet" href="css/noscript.css" /></noscript>
	</head>
	<body class="is-preload">

		<form id="form1" runat="server">

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Header -->
					<header id="header">
						<a href="Default.aspx" class="logo">Knela</a>
					</header>

				<!-- Nav -->
					<nav id="nav">
						<ul class="links">
							
							<li class="active"><a href="Login.aspx">Login</a></li>
							
						<ul class="icons">
							<li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
							<li><a href="#" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
							<li><a href="#" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
							<li><a href="#" class="icon brands fa-github"><span class="label">GitHub</span></a></li>
						</ul>
					</nav>

				<!-- Main -->
					<div id="main">

						<!-- Post -->
							<section class="post">
                                <div align="center"><img src="images/pic07.jpg" width="500" height="260"/></a></div>
								<header class="major">

							<br />
                                    <asp:Label ID="Label1" runat="server" Text="Usuario"></asp:Label> <br />
                                    <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox> <br />
                                    <asp:Label ID="Label2" runat="server" Text="Contraseña Actual"></asp:Label> <br />           
                                    <asp:TextBox ID="txtContraseña" runat="server"></asp:TextBox>
                                    <asp:Label ID="Label3" runat="server" Text="Contraseña Nueva"></asp:Label>
                                    <asp:TextBox ID="txtcontraseñaNueva" runat="server"></asp:TextBox>
                                    <br />
                                    
                                    
                                    <asp:Button ID="btnCambiar" runat="server" Text="Cambiar" OnClick="btnCambiar_Click" />
                                    <asp:Button ID="Button1" runat="server" Text="Volver" PostBackUrl="~/Insumo.aspx" OnClick="Button1_Click" />
                                    <br />
                                    
									
								</header>
                          
                       
							</section>

					</div>

				<!-- Footer -->
					
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
