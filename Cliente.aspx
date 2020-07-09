<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cliente.aspx.cs" Inherits="Pedido" %>


<!DOCTYPE HTML>
<!--
	Massively by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>Elements Reference - Massively by HTML5 UP</title>
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
							
							<li class="active"><a href="Cliente.aspx">Cliente</a></li>
                            
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

						<!-- Post -->
							<section class="post">
								<header class="major">
									<h1>Datos<br />
									del Cliente</h1>
								</header>

								<!-- Text stuff -->
									
									<asp:Label ID="Label11" runat="server" Text="Id Cliente"></asp:Label>
                                <asp:TextBox ID="txtIdCliente" runat="server"></asp:TextBox>
                                 <asp:Label ID="Label3" runat="server" Text="Apellido Paterno"></asp:Label>
                                <asp:TextBox ID="txtApaterno" runat="server"></asp:TextBox>
                                <asp:Label ID="Label2" runat="server" Text="Apellido Materno"></asp:Label>
                                <asp:TextBox ID="txtAmaterno" runat="server"></asp:TextBox>
                                <asp:Label ID="Label4" runat="server" Text="Nombres"></asp:Label>
                                <asp:TextBox ID="txtNombres" runat="server"></asp:TextBox>
                                <asp:Label ID="Label5" runat="server" Text="DNI"></asp:Label>
                                <asp:TextBox ID="txtDNI" runat="server"></asp:TextBox>
                                <asp:Label ID="Label6" runat="server" Text="Direccion"></asp:Label>
                                <asp:TextBox ID="txtDireccion" runat="server"></asp:TextBox>
                                <asp:Label ID="Label7" runat="server" Text="Usuario"></asp:Label>
                                <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox>
                                <asp:Label ID="Label8" runat="server" Text="Contraseña"></asp:Label>
                                <asp:TextBox ID="txtContrasena" runat="server"></asp:TextBox>
									<asp:Button ID="btnCrear" runat="server" Text="Crear" OnClick="btnCrear_Click"  />
									<asp:Button ID="btnVolver" runat="server" Text="Volver al Login" PostBackUrl="~/Login.aspx"/>
									<hr />
									
								<!-- Blockquote -->
									<h2>Recomendaciones</h2>
									<blockquote>Una recepción amigable ayuda a conectar. Knela les gustará tu panadería si después de unas pocas visitas eres capaz de acordarte de la clientela y de lo que les gusta comprar</blockquote>

									<hr />

								

								
								

									

								

								
				

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
