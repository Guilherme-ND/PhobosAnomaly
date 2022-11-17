using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Phobos.UI
{
    public partial class DefaultUser : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"] == null)
            {
                Response.Redirect("../login.aspx");
            }
            lblMessage.Text = "Bem Vindo " + Session["Usuario"] + " a Phobos";
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("../login.aspx");
        }
    }
}