using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    KnelaDataContext Knela= new KnelaDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void btnIniciar_Click(object sender, EventArgs e)
    {
        String Usuario = txtUsuario.Text.Trim();
        String Contraseña = txtContraseña.Text.Trim();
        var consulta = from C in Knela.spLoginUsuarioE(Usuario, Contraseña)
                       select C;
      
        byte codError = 0;
        string mensaje = string.Empty;
        foreach (var consultar in consulta)
        {
            codError = Convert.ToByte(consultar.CodError);
            mensaje = consultar.Mensaje;
          

if (Usuario != "" && Contraseña != "")
        {
            
            if (mensaje=="Cliente")
            {
        Response.Redirect("Default.aspx");
               
            }
            else if (mensaje=="Administrador")
            {
        Response.Redirect("Insumo.aspx");
                
            }
           
        }
        }
        if (codError == 0)
            
        Response.Write("<script>alert('" + mensaje + "')</script>");
        else
            Response.Write("<script>alert('Usuario Incorrecto')</script>");
    }
}