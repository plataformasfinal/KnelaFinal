<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BoletaFinal.aspx.cs" Inherits="BoletaFinal" %>

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
							
							
                            
                            <li class="active"><a href="BoletaFinal.aspx">Boleta</a></li>
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
									<h1>Boleta</h1>
                                        
									
								</header>
                                <h3>
                                <asp:Label ID="Label1" runat="server" Text="IdPedido"></asp:Label>
                                    <div style="padding:10px"> 
                                        <asp:Label ID="Label6" runat="server" Text="Ingrese su Boleta"></asp:Label>
                                        <asp:TextBox ID="txtBoleta2" runat="server"></asp:TextBox>
                                        <asp:Button ID="btnaceptar" runat="server" Text="Aceptar" OnClick="btnaceptar_Click" />
                                        <div style="padding:10px">
                                            <asp:GridView ID="gvBoleta" runat="server"  CssClass="align-center"  >
                                        </asp:GridView>
                                        </div>
                                        
                                    </div>
                                     <div style="padding:10px"> 
                                        <asp:GridView ID="gvBoleta2" runat="server"  CssClass="align-center"  >
                                        </asp:GridView>
                                    </div>
									    
									    
                        
                                    
                                    <asp:Button ID="btnSalir" runat="server" Text="Salir" PostBackUrl="~/Login.aspx"/>
                                    </h3>
                                <%--<asp:Label ID="lbla" runat="server" Text="Insumo"></asp:Label>
                                 <asp:Label ID="lblInsumo" runat="server" ></asp:Label><br />
                                <asp:Label ID="Label2" runat="server" Text="Cantidad"></asp:Label>
                                 <asp:Label ID="lblCantidad" runat="server" ></asp:Label><br />
                                <asp:Label ID="lblb" runat="server" Text="Precio Unitario"></asp:Label>
                                <asp:Label ID="lblPrecio" runat="server" ></asp:Label><br />
                                <asp:Label ID="lblc" runat="server" Text="Precio Total"></asp:Label>
                                <asp:Label ID="lblTotal" runat="server" ></asp:Label>--%>
    
  <!-- Blockquote -->
									<h2>
                                        
                                        Recomendaciones</h2>
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


