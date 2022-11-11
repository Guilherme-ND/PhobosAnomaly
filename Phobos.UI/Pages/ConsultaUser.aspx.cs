using Phobos.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Phobos.UI.Pages
{
    public partial class ConsultaUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UsuarioBLL objModelo = new UsuarioBLL();
            dgv1.DataSource = objModelo.ListarUsuario(); //Popular objeto
            dgv1.DataBind(); //Imprimindo na tela
        }
    }
}