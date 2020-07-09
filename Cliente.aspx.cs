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

    }
    protected void btnCrear_Click(object sender, EventArgs e)
    {
        String IdCliente = txtIdCliente.Text.Trim();
        String APaterno = txtApaterno.Text.Trim();
        String Amaterno = txtAmaterno.Text.Trim();
        String nombres = txtNombres.Text.Trim();
        int Dni = int.Parse(txtDNI.Text.Trim());
        String direccion = txtDireccion.Text.Trim();
        String usuario = txtUsuario.Text.Trim();
        String Contrasena = txtContrasena.Text.Trim();
        var consulta = from C in Knela.spAgregarClienteE(IdCliente, APaterno, Amaterno, nombres, Dni, direccion, usuario,Contrasena)
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
}