using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    KnelaDataContext Knela = new KnelaDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
            Listar();
    }
    private void Listar()
    {
        dgInsumos.DataSource = Knela.uspListarInsumo();
        dgInsumos.DataBind();
    }
    protected void btnCrear_Click(object sender, EventArgs e)
    {
        
        String IdInsumo = txtIdInsumo.Text.Trim();
        String TiPostre = txtTipodePostre.Text.Trim();
        String NuInsumo = txtNombreInsumo.Text.Trim();
        String DeInsumo = txtDescripcionInsumo.Text.Trim();
        var consulta = from C in Knela.spAgregarInsumo(IdInsumo, TiPostre, NuInsumo,  DeInsumo)
                       select C;
        byte codError = 0;
        string mensaje = string.Empty;
        foreach (var consultar in consulta)
        {
            codError = Convert.ToByte(consultar.CodError);
            mensaje = consultar.Mensaje;
        }
        if (codError == 0)
            Listar();

            Response.Write("<script>alert('" + mensaje + "')</script>");
      
           
    }
    //protected void btnEliminar_Click(object sender, EventArgs e)
    //{
    //    String IdInsumo = txtIdInsumo.Text.Trim();
        
    //    var consulta = from C in Knela.spElimiarInsumo(IdInsumo)
    //                   select C;
    //    byte codError = 0;
    //    string mensaje = string.Empty;
    //    foreach (var consultar in consulta)
    //    {
    //        codError = Convert.ToByte(consultar.CodError);
    //        mensaje = consultar.Mensaje;
    //    }
    //    if (codError == 0)
    //        Listar();

    //    Response.Write("<script>alert('" + mensaje + "')</script>");
    //}
    //protected void btnActualizar_Click(object sender, EventArgs e)
    //{
    //    String IdInsumo = txtIdInsumo.Text.Trim();
    //    String TiPostre = txtTipodePostre.Text.Trim();
    //    String NuInsumo = txtNombreInsumo.Text.Trim();
    //    float CoUnitario = float.Parse(txtCostoUnitario.Text.Trim());
    //    String DeInsumo = txtDescripcionInsumo.Text.Trim();
    //    var consulta = from C in Knela.spActualizarInsumo(IdInsumo, TiPostre, NuInsumo, CoUnitario, DeInsumo)
    //                   select C;
    //    byte codError = 0;
    //    string mensaje = string.Empty;
    //    foreach (var consultar in consulta)
    //    {
    //        codError = Convert.ToByte(consultar.CodError);
    //        mensaje = consultar.Mensaje;
    //    }
    //    if (codError == 0)
    //        Listar();

    //    Response.Write("<script>alert('" + mensaje + "')</script>");
    //}
}