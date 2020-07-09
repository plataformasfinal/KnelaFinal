<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Boleta.aspx.cs" Inherits="Boleta" %>

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
							
							
                            
                            <li class="active"><a href="Boleta.aspx">Pedido</a></li>
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
									<h1>Pedido</h1>
                                        
									
								</header>
                                <h3>
                                <asp:Label ID="Label1" runat="server" Text="IdPedido"></asp:Label>
                                        <asp:TextBox ID="txtIdPedido" runat="server"></asp:TextBox>
                                        <asp:Label ID="Label2" runat="server" Text="Id Boleta"></asp:Label>
                                        <asp:TextBox ID="txtIdBoleta" runat="server"></asp:TextBox>
                                        <asp:Label ID="Label3" runat="server" Text="Descripcion del Pedido"></asp:Label>
                                        <asp:TextBox ID="txtDescripcion" runat="server"></asp:TextBox>
                                        <asp:Label ID="Label4" runat="server" Text="Id del Cliente"></asp:Label>
                                        <asp:TextBox ID="txtIdCliente" runat="server"></asp:TextBox>
                                        <asp:Label ID="Label5" runat="server" Text="Detalle del Pedido"></asp:Label>
                                        <asp:TextBox ID="txtDetallePedido" runat="server"></asp:TextBox>
									    <asp:Label ID="Label6" runat="server" Text="Detalle del Venta"></asp:Label>
                                        <asp:TextBox ID="txtDetalleVenta" runat="server"></asp:TextBox>
                                    <asp:Label ID="Label7" runat="server" Text="Descuento(en %)"></asp:Label>
                                        <asp:TextBox ID="txtDescuento" runat="server"></asp:TextBox>
                                    <asp:Label ID="Label8" runat="server" Text="Monto Total"></asp:Label>
                                        <asp:TextBox ID="txtMonto" runat="server"></asp:TextBox>
									    <asp:GridView ID="gvPedido" runat="server">
                                        </asp:GridView>
                                    <asp:Button ID="btnGenerarBoleta" runat="server" Text="Generar Boleta" OnClick="btnGenerarBoleta_Click" />
                                    <br /><asp:Button ID="btncancelarpedido" runat="server" Text="Cancelar Pedido" PostBackUrl="~/Default.aspx" />
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

