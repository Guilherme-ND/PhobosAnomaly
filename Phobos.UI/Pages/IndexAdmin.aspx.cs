using Phobos.BLL;
using Phobos.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Phobos.UI.Pages
{
    public partial class IndexAdmin : System.Web.UI.Page
    {
        //Instanciando objetos
        UsuarioDTO objModeloUser = new UsuarioDTO();
        UsuarioBLL objBLLUser = new UsuarioBLL();

        //Metodo p/ popular dgv1
        public void PopularGVUser()
        {
            dgv1.DataSource = objBLLUser.ListarUserAdmin();
            dgv1.DataBind();
        }


        //messageBox com JS
        public void MsgBox(String ex, Page pg, Object obj)
        {
            string s = "<SCRIPT language='javascript'>alert('" + ex.Replace("\r\n", "\\n").Replace("'", "") + "'); </SCRIPT>";
            Type cstype = obj.GetType();
            ClientScriptManager cs = pg.ClientScript;
            cs.RegisterClientScriptBlock(cstype, s, s.ToString());
        }


        //validacao User
        private bool ValidaPage()
        {
            bool PageValido;

            if (string.IsNullOrEmpty((dgv1.FooterRow.FindControl("txtnomeusuarioFooter") as TextBox).Text.Trim()))
            {
                //(dgv1.FooterRow.FindControl("txtNomeUsuarioFooter") as TextBox).BackColor= Color.Red;
                MsgBox("Digite o nome!", Page, this);
                //(dgv1.FooterRow.FindControl("txtNomeUsuarioFooter") as TextBox).BackColor = Color.White;
                (dgv1.FooterRow.FindControl("txtnomeusuarioFooter") as TextBox).Focus();
                PageValido = false;
            }

            else if (string.IsNullOrEmpty((dgv1.FooterRow.FindControl("txtemailusuarioFooter") as TextBox).Text.Trim()))
            {
                MsgBox("Digite o email!", this.Page, this);
                (dgv1.FooterRow.FindControl("txtemailusuarioFooter") as TextBox).Focus();
                PageValido = false;
            }
            else if (string.IsNullOrEmpty((dgv1.FooterRow.FindControl("txtsenhausuarioFooter") as TextBox).Text.Trim()))
            {
                MsgBox("Digite a senha!", this.Page, this);
                (dgv1.FooterRow.FindControl("txtsenhausuarioFooter") as TextBox).Focus();
                PageValido = false;
            }
            else if (string.IsNullOrEmpty((dgv1.FooterRow.FindControl("txtdataNascUsuarioFooter") as TextBox).Text.Trim()) || (dgv1.FooterRow.FindControl("txtdataNascUsuarioFooter") as TextBox).Text.Trim().Length < 10)
            {
                MsgBox("Digita a data!", this.Page, this);
                (dgv1.FooterRow.FindControl("txtdataNascUsuarioFooter") as TextBox).Focus();
                PageValido = false;
            }
            else if ((dgv1.FooterRow.FindControl("rbl1") as RadioButtonList).SelectedIndex < 0)
            {
                MsgBox("Escolha uma das opções!", this.Page, this);
                (dgv1.FooterRow.FindControl("rbl1") as RadioButtonList).Focus();
                PageValido = false;

            }
            else
            {
                PageValido = true;
            }
            return PageValido;

        }


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PopularGVUser();
                lblMessage.Text = string.Empty;
            }

            //Iniciando a sessão
            if (Session["usuario"] == null)
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void dgv1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("Add"))
            {

                if (ValidaPage())
                {
                    objModeloUser.nomeUsuario = (dgv1.FooterRow.FindControl("txtnomeusuarioFooter") as TextBox).Text.Trim();
                    objModeloUser.senhaUsuario = (dgv1.FooterRow.FindControl("txtsenhausuarioFooter") as TextBox).Text.Trim();
                    objModeloUser.emailUsuario = (dgv1.FooterRow.FindControl("txtemailusuarioFooter") as TextBox).Text.Trim();

                    //ajustando a data

                    DateTime dt = DateTime.Parse((dgv1.FooterRow.FindControl("txtdataNascUsuarioFooter") as TextBox).Text.Trim());
                    objModeloUser.dataNascUsuario = dt.ToString("yyyy/MM/dd");


                    objModeloUser.usuarioTp = (dgv1.FooterRow.FindControl("rbl1") as RadioButtonList).Text.Trim();

                    objBLLUser.CadastrarUser(objModeloUser);
                    PopularGVUser();
                    (dgv1.FooterRow.FindControl("txtnomeusuarioFooter") as TextBox).Focus();
                    lblMessage.Text = "Usuário " + objModeloUser.nomeUsuario + " cadastrado com Sucesso !!";
                }
            }
        }

        protected void dgv1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            objModeloUser.nomeUsuario = (dgv1.Rows[e.RowIndex].FindControl("txtnomeusuario") as TextBox).Text.Trim();
            objModeloUser.emailUsuario = (dgv1.Rows[e.RowIndex].FindControl("txtemailusuario") as TextBox).Text.Trim();
            objModeloUser.senhaUsuario = (dgv1.Rows[e.RowIndex].FindControl("txtsenhausuario") as TextBox).Text.Trim();
            objModeloUser.dataNascUsuario = (dgv1.Rows[e.RowIndex].FindControl("txtdataNascUsuario") as TextBox).Text.Trim();
            objModeloUser.usuarioTp = (dgv1.Rows[e.RowIndex].FindControl("rbl1") as RadioButtonList).Text.Trim();


            objModeloUser.idUsuario = Convert.ToInt32(dgv1.DataKeys[e.RowIndex].Value.ToString());

            objBLLUser.EditUser(objModeloUser);

            dgv1.EditIndex = -1;

            PopularGVUser();

            lblMessage.Text = "Usuário " + objModeloUser.nomeUsuario + " editado com sucesso !!";
        }

        protected void dgv1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            objModeloUser.idUsuario = Convert.ToInt32(dgv1.DataKeys[e.RowIndex].Value.ToString());
            objBLLUser.DeleteUser(objModeloUser.idUsuario);
            PopularGVUser();
            lblMessage.Text = "Usuário " + objModeloUser.nomeUsuario + " eliminado com sucesso !!";
        }

        protected void dgv1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            dgv1.EditIndex = e.NewEditIndex;
            PopularGVUser();
        }

        protected void dgv1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            dgv1.EditIndex = -1;
            PopularGVUser();
        }
    }
}