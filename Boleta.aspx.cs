using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Boleta : System.Web.UI.Page
{
    KnelaDataContext Knela = new KnelaDataContext();
    double montofinal = 0;
    String IdDetalleVenta = " ";
    String IdDetallePedido = " ";
    protected void Page_Load(object sender, EventArgs e)
    {
        Page previousPage = Page.PreviousPage;
        if (PreviousPage != null)
        {
            String IdDetalle = ((TextBox)previousPage.FindControl("txtIdDetallePedido")).Text;
            
            gvPedido.DataSource = Knela.spListarDetallePedidos1(IdDetalle);
            gvPedido.DataBind();

            IdDetalleVenta = ((TextBox)previousPage.FindControl("txtIdDetalleVenta")).Text;

            IdDetallePedido = ((TextBox)previousPage.FindControl("txtIdDetallePedido")).Text;

            String MontoTotal = ((TextBox)previousPage.FindControl("txtCostoUnitario")).Text;

            String Cantidad = ((TextBox)previousPage.FindControl("txtCantidad")).Text;
            



            double cstu = (Convert.ToDouble(MontoTotal));
            double cantidad = (Convert.ToDouble(Cantidad));
             montofinal = cstu * cantidad;
             

            
            //    lblPrecio.Text = ((TextBox)previousPage.FindControl("txtPrecio")).Text;
            //    lblTotal.Text = ((TextBox)previousPage.FindControl("txtTotal")).Text;


            //}


            // Llamar a los datos del seguimiento academico


        }

    }
    protected void btnGenerarBoleta_Click(object sender, EventArgs e)
    {

        String idpedido = txtIdPedido.Text.Trim();
        String idboleta = txtIdBoleta.Text.Trim();
        String descripcion = txtDescripcion.Text.Trim();
        String idcliente = txtIdCliente.Text.Trim();
        String detallepedido = txtDetallePedido.Text.Trim();
        String detalleventa = txtDetalleVenta.Text.Trim();
        double descuento = double.Parse(txtDescuento.Text.Trim());
        double montototal = double.Parse(txtMonto.Text.Trim());
        var  monto = from C in Knela.TDetallePedido
                                    where C.IdDetallePedido == detallepedido
                                    select C.CstTotal;
        
        
        var consulta = from C in Knela.spAgregarPedido1(idpedido, idboleta, null, descripcion, idcliente, detallepedido,detalleventa,descuento,montototal)
                       select C;
        Response.Redirect("BoletaFinal.aspx");
    //    byte codError = 0;
    //    string mensaje = string.Empty;
    //    foreach (var consultar in consulta)
    //    {
    //        codError = Convert.ToByte(consultar.codError);
    //        mensaje = consultar.Mensaje;
    //    }
    //    if (codError == 0)
    //        Listar();

        

    }
    //}
}