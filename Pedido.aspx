<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Pedido.aspx.cs" Inherits="Pedido" %>

<
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
							<li ><a href="Default.aspx">Pagina Principal</a></li>
							
							
                            <li class="active"><a href="Pedido.aspx">Pedido</a></li>
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

						<!-- Post -->
							<section class="post">
								<header class="major">
									<h1>Datos<br />
                                        
                                        
									del Pedido</h1>
								</header>

								<!-- Text stuff -->
									
									
								<%--	<asp:Label ID="Label1" runat="server" Text="Id del Pedido"></asp:Label>
                                <asp:TextBox ID="txtIdpedido" runat="server"></asp:TextBox>
                                <asp:Label ID="Label2" runat="server" Text="Fecha y Hora"></asp:Label>
                                <asp:TextBox ID="txtFechaHora" runat="server"></asp:TextBox>
                                <asp:Label ID="Label3" runat="server" Text="Numero de Orden de Pedido"></asp:Label>
                                <asp:TextBox ID="txtOrdendepedido" runat="server"></asp:TextBox>
                                <asp:Label ID="Label4" runat="server" Text="Descripcion del Pedido"></asp:Label>
                                <asp:TextBox ID="txtDescripcionPedido" runat="server"></asp:TextBox>
                                <asp:Label ID="Label5" runat="server" Text="Id del Cliente"></asp:Label>--%>
                                <asp:Label ID="Label18" runat="server" Text="Id Detalle Pedido"></asp:Label>
									    <asp:TextBox ID="txtIdDetallePedido" runat="server"></asp:TextBox><br />
                                
                                <asp:DropDownList ID="ddInsumo" runat="server">
                                </asp:DropDownList>
                                <asp:Label ID="Label1" runat="server" Text="Id Detalle Venta"></asp:Label>
									    <asp:TextBox ID="txtIdDetalleVenta" runat="server"></asp:TextBox><br />
                                <asp:Label ID="Label2" runat="server" Text="Costo Unitario"></asp:Label>
									    <asp:TextBox ID="txtCostoUnitario" runat="server"></asp:TextBox><br />
                                <%--<asp:TextBox ID="txtIdcliente" runat="server"></asp:TextBox>

                                <asp:Button ID="btnAgregar" runat="server" OnClick="Button1_Click" Text="Agregar" />--%>
									
									<asp:Label ID="Label16" runat="server" Text="Cantidad"></asp:Label>
                                <asp:TextBox ID="txtCantidad" runat="server"></asp:TextBox><br />
                                <%--<asp:Label ID="Label17" runat="server" Text="Precio Unitario"></asp:Label>
                                <asp:TextBox ID="txtPrecio" runat="server"></asp:TextBox>--%>
                                <%--<asp:Label ID="Label18" runat="server" Text="Precio Total"></asp:Label>
                                <asp:TextBox ID="txtTotal" runat="server"></asp:TextBox>--%>
                                
                                
									
									<asp:Button ID="btnBoleta" runat="server" Text="Agregar" PostBackUrl="~/Boleta.aspx" OnClick="btnBoleta_Click"  /><br />
									
									<%--<asp:Button ID="btncalculo" runat="server" Text="Calcular Precio" OnClick="btnCalculo_Click"/>--%>
									
									
									
						
									
								<!-- Blockquote -->
									<br /><h2>Recomendaciones</h2>
									<blockquote>Una recepción amigable ayuda a conectar. Knela les gustará tu panadería si después de unas pocas visitas eres capaz de acordarte de la clientela y de lo que les gusta comprar</blockquote>

								

								

								
								
								
				

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

