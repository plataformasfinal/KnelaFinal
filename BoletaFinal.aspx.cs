using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class BoletaFinal : System.Web.UI.Page
{
    KnelaDataContext Knela = new KnelaDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        Page previousPage = Page.PreviousPage;
        if (PreviousPage != null)
        {
            String IdDetalle = ((TextBox)previousPage.FindControl("txtIdDetallePedido")).Text;

            
        }
      
    }
    protected void btnaceptar_Click(object sender, EventArgs e)
    {
        String detallepedido = txtBoleta2.Text.Trim();
        gvBoleta.DataSource = Knela.spVerBoleta(detallepedido);

        gvBoleta.DataBind();
        gvBoleta2.DataSource = Knela.spVerBoleta2(detallepedido);
        gvBoleta2.DataBind();

    }
}