<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultAdmin.Master" AutoEventWireup="true" CodeBehind="IndexAdmin.aspx.cs" Inherits="Phobos.UI.Pages.IndexAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/styleP.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="base">
        <h1 id="user">Users</h1>

        <asp:GridView runat="server" ID="dgv1" GridLines="None" AutoGenerateColumns="false" ShowFooter="true" DataKeyNames="idUsuario" OnRowCommand="dgv1_RowCommand" OnRowUpdating="dgv1_RowUpdating" OnRowDeleting="dgv1_RowDeleting"
            OnRowEditing="dgv1_RowEditing" OnRowCancelingEdit="dgv1_RowCancelingEdit">
            <Columns>
                <%--Template Nome--%>
                <asp:TemplateField HeaderText="Nome">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("nomeUsuario") %>' />
                    </ItemTemplate>

                    <EditItemTemplate>
                        <asp:TextBox runat="server" ID="txtnomeusuario" MaxLength="50" Text='<%#Eval("nomeUsuario") %>' />

                        <asp:RequiredFieldValidator
                            ID="nomeusuario"
                            runat="server"
                            ErrorMessage="Digite o nome !!"
                            ForeColor="Red"
                            ControlToValidate="txtnomeusuario" />

                    </EditItemTemplate>

                    <FooterTemplate>
                        <asp:TextBox runat="server" ID="txtnomeusuarioFooter" MaxLength="50" />
                    </FooterTemplate>
                </asp:TemplateField>

                <%--Template Email--%>
                <asp:TemplateField HeaderText="E-mail">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("emailUsuario") %>' />
                    </ItemTemplate>

                    <EditItemTemplate>
                        <asp:TextBox runat="server" ID="txtemailusuario" MaxLength="50" Text='<%#Eval("emailUsuario") %>' />

                        <asp:RequiredFieldValidator
                            ID="emailusuario"
                            runat="server"
                            ErrorMessage="Digite o e-mail !!"
                            ForeColor="Red"
                            ControlToValidate="txtemailusuario" />

                    </EditItemTemplate>

                    <FooterTemplate>
                        <asp:TextBox runat="server" ID="txtemailusuarioFooter" MaxLength="50" />
                    </FooterTemplate>
                </asp:TemplateField>

                <%--Template Senha--%>
                <asp:TemplateField HeaderText="Senha">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("senhaUsuario") %>' />
                    </ItemTemplate>

                    <EditItemTemplate>
                        <asp:TextBox runat="server" ID="txtsenhausuario" MaxLength="6" Text='<%#Eval("senhaUsuario") %>' />

                        <asp:RequiredFieldValidator
                            ID="senhausuario"
                            runat="server"
                            ErrorMessage="Digite a senha !!"
                            ForeColor="Red"
                            ControlToValidate="txtsenhausuario" />

                    </EditItemTemplate>

                    <FooterTemplate>
                        <asp:TextBox runat="server" ID="txtsenhausuarioFooter" MaxLength="50" />
                    </FooterTemplate>
                </asp:TemplateField>

                <%--Template DataNascUsuario--%>
                <asp:TemplateField HeaderText="Data Nascimento">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("dataNascUsuario") %>' />
                    </ItemTemplate>

                    <EditItemTemplate>
                        <asp:TextBox runat="server" ID="txtdataNascusuario" MaxLength="50" Text='<%#Eval("dataNascUsuario") %>' />

                        <asp:RequiredFieldValidator
                            ID="dataNascusuario"
                            runat="server"
                            ErrorMessage="Digite a data!!"
                            ForeColor="Red"
                            ControlToValidate="txtdataNascUsuario" />

                    </EditItemTemplate>

                    <FooterTemplate>
                        <asp:TextBox runat="server" ID="txtdataNascusuarioFooter" MaxLength="50" />
                    </FooterTemplate>
                </asp:TemplateField>

                <%--UsuarioTp--%>
                <asp:TemplateField HeaderText="Tipo Usuário">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("usuarioTp") %>' />
                    </ItemTemplate>

                    <EditItemTemplate>
                        <asp:RadioButtonList runat="server" ID="rbl1">
                            <asp:ListItem Value="1" Text="Administrador" />
                            <asp:ListItem Value="2" Text="Outros" />
                        </asp:RadioButtonList>

                    </EditItemTemplate>

                    <FooterTemplate>
                        <asp:RadioButtonList runat="server" ID="rbl1">
                            <asp:ListItem Value="1" Text="Administrador" />
                            <asp:ListItem Value="2" Text="Outros" />
                        </asp:RadioButtonList>
                    </FooterTemplate>
                </asp:TemplateField>

                <%--Buttons--%>
                <asp:TemplateField HeaderText="Opções">
                    <ItemTemplate>
                        <asp:ImageButton runat="server" ID="btnEditar" ImageUrl="~/img/updateB.png" ToolTip="Editar" Width="30" Height="30" CommandName="Edit" />

                        <asp:ImageButton runat="server" ID="btnExcluir" ImageUrl="~/img/deleteB.png" ToolTip="Excluir" Width="30" Height="30" CommandName="Delete" OnClientClick="if (!confirm('Deseja realmente eliminar este registro ?')) return false" />

                    </ItemTemplate>

                    <EditItemTemplate>
                        <asp:ImageButton runat="server" ID="btnSalvar" ImageUrl="~/img/saveB.png" ToolTip="Salvar" Width="30" Height="30" CommandName="Update" />

                        <asp:ImageButton runat="server" ID="btnCancelar" ImageUrl="~/img/cancel.png" ToolTip="Cancelar" Width="30" Height="30" CommandName="Cancel" />

                    </EditItemTemplate>

                    <FooterTemplate>
                        <asp:ImageButton runat="server" ID="btnAdicionar" ImageUrl="~/img/addB.png" ToolTip="Adicionar" Width="30" Height="30" CommandName="Add" />

                    </FooterTemplate>
                </asp:TemplateField>

            </Columns>

        </asp:GridView>

        <br />
        <asp:Label runat="server" ID="lblMessage" Text="Label" ForeColor="White" />

    </div>
</asp:Content>
