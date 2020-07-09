<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Insumo.aspx.cs" Inherits="Default2" %>


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
							<li class="active"><a href="Insumo.aspx">Inventariado de Insumos</a></li>
							<li><a href="CambiaContrsenaA.aspx">Cambiar Contraseña</a></li>
							
                            
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
                                 <div style="text-align: right">
                                    <<asp:Button ID="btncerrarcesion" runat="server" Text="Cerrar Cesion" PostBackUrl="~/Login.aspx" /><br />
                                    </div>
								<header class="major">
									<h1>Inventariado<br />
									de Insumos</h1>
								</header>


								<!-- Text stuff -->
									
									<asp:Label ID="Label11" runat="server" Text="Id Insumo"></asp:Label>
                                <asp:TextBox ID="txtIdInsumo" runat="server"></asp:TextBox>
                                 <asp:Label ID="Label3" runat="server" Text="Tipo de Postre"></asp:Label>
                                <asp:TextBox ID="txtTipodePostre" runat="server"></asp:TextBox>
                                <asp:Label ID="Label2" runat="server" Text="Nombre"></asp:Label>
                                <asp:TextBox ID="txtNombreInsumo" runat="server"></asp:TextBox>
                             
                                <asp:Label ID="Label5" runat="server" Text="Descripcion"></asp:Label>
                                <asp:TextBox ID="txtDescripcionInsumo" runat="server"></asp:TextBox><br />
                                
									<asp:Button ID="btnAgregar" runat="server" Text="Agregar" OnClick="btnCrear_Click"  />
									<asp:Button ID="btnEliminar" runat="server" Text="Eliminar"  PostBackUrl="~/EliInsumo.aspx" />
                                <asp:Button ID="btnModificar" runat="server" Text="Modificar"  PostBackUrl="~/ModInsumo.aspx"/>
                                
                                <asp:GridView ID="dgInsumos" runat="server">
                                </asp:GridView>
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
