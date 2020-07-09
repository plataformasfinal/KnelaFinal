using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CambiarContraUs : System.Web.UI.Page
{
    KnelaDataContext Knela = new KnelaDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnCambiar_Click(object sender, EventArgs e)
    {
        String usuario = txtUsuario.Text.Trim();
        String contraseña = txtContraseña.Text.Trim();
        String contraseñan = txtcontraseñaNueva.Text.Trim();
        var consulta = from C in Knela.spActualizarContrasena1(usuario, contraseña, contraseñan)
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
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}