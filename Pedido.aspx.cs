using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pedido : System.Web.UI.Page
{
    KnelaDataContext Knela = new KnelaDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
       
        if (!Page.IsPostBack)
        ddInsumo.DataSource = Knela.TInsumo.ToList();
        ddInsumo.DataTextField = "NombreInsumo";
        ddInsumo.DataValueField = "IdInsumo";
        ddInsumo.DataBind();
        
    }






    //protected void Button1_Click(object sender, EventArgs e)
    //{
    //    String IdPedido = txtIdpedido.Text.Trim();
    //    String fechahora = txtFechaHora.Text.Trim();
    //    int numeroordenpedido= int.Parse(txtOrdendepedido.Text.Trim());
    //    String descripcionpedido = txtDescripcionPedido.Text.Trim();
    //    String idcliente = txtIdcliente.Text.Trim();
    //    var consulta = from C in Knela.spAgregarPedido1(IdPedido, fechahora,numeroordenpedido,descripcionpedido,idcliente)
    //                   select C;
    //    byte codError = 0;
    //    string mensaje = string.Empty;
    //    foreach (var consultar in consulta)
    //    {
    //        codError = Convert.ToByte(consultar.CodError);
    //        mensaje = consultar.Mensaje;
    //    }
    //    if (codError == 0)

    //        Response.Write("<script>alert('" + mensaje + "')</script>");
    //    else
    //        Response.Write("<script>alert('Usuario Incorrecto')</script>");
    //}
    protected void btnBoleta_Click(object sender, EventArgs e)
    {
        String IdPedido = txtIdDetallePedido.Text.Trim();
        String ddValue = ddInsumo.SelectedItem.Value;
        String idVenta = txtIdDetalleVenta.Text.Trim();
        int Cantidad = int.Parse(txtCantidad.Text.Trim());
        double Precio = double.Parse(txtCostoUnitario.Text.Trim());
        double Total = Cantidad * Precio;

        var consulta = from C in Knela.spAgregarDetallePedido(IdPedido, ddValue, idVenta, Precio, Cantidad,Total)
                       select C;
        byte codError = 0;
        string mensaje = string.Empty;
        foreach (var consultar in consulta)
        {
            codError = Convert.ToByte(consultar.CodError);
            mensaje = consultar.Mensaje;
           
        }
        if (codError == 0)

            Response.Write("<script>alert('" + mensaje + "')</script>");
        else
            Response.Write("<script>alert('Usuario Incorrecto')</script>");
       
        
    }
    protected void ddInsumo_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    //protected void btnCalculo_Click(object sender, EventArgs e)
    //{
    //    double Cantidad = double.Parse(txtCantidad.Text.Trim());
    //    double Precio = double.Parse(txtPrecio.Text.Trim());
    //    double Total = Cantidad * Precio;
    //    txtTotal.Text = Total.ToString();
    //}
}