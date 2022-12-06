using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BIBLIOTECAUDC.PRESENTACION
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                int idEstudiante = int.Parse(txtID.Text);
                string apellidoEstudiante = txtApellido.Text;
                string nombreEstudiante = txtNombre.Text;
                string fechaNacimiento = txtFecha.Text;
                string generoEstudiante = txtGenero.Text;
                int tipoDocumento = int.Parse(txtID.Text);
                int numeroDocumento = int.Parse(txtDocumento.Text);
                string email = txtEmail.Text;
                string celular = txtCelular.Text;
                string direccion = txtDireccion.Text;
                int programaId = int.Parse(txtID.Text);




            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('se presento un error: " + ex.Message.ToString() + "');", true);
            }
        }
    }
}