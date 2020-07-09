using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default3 : System.Web.UI.Page
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
    protected void btnAceptar_Click(object sender, EventArgs e)
    {

    }
    protected void btnEliminar_Click(object sender, EventArgs e)
    {
        String IdInsumo = txtIdInsumo.Text.Trim();

        var consulta = from C in Knela.spElimiarInsumo(IdInsumo)
                       select C;
        byte codError = 0;
        string mensaje = string.Empty;
        foreach (var consultar in consulta)
        {
            codError = Convert.ToByte(consultar.codError);
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
    protected void btnModificar_Click(object sender, EventArgs e)
    {

    }
}