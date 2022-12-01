<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultAdmin.Master" AutoEventWireup="true" CodeBehind="IndexAdminFilme.aspx.cs" Inherits="Phobos.UI.Pages.IndexAdminFilme" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/styleP.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="base">
        <h1 id="movie">Movie</h1>

        <asp:GridView runat="server" ID="dgv2" GridLines="None" AutoGenerateColumns="false" ShowFooter="true" DataKeyNames="idFilme" OnRowCommand="dgv2_RowCommand" OnRowEditing="dgv2_RowEditing" OnRowCancelingEdit="dgv2_RowCancelingEdit" OnRowUpdating="dgv2_RowUpdating" OnRowDeleting="dgv2_RowDeleting">
             <Columns>

                <%--template Titulo--%>
                <asp:TemplateField HeaderText="Filme">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("tituloFilme") %>' />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txttitulofilme" runat="server" MaxLength="50" Text='<%#Eval("tituloFilme") %>' />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txttitulofilmeFooter" runat="server" />
                    </FooterTemplate>
                </asp:TemplateField>

                <%--template Genero--%>
                <asp:TemplateField HeaderText="Gênero">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("generoFilme") %>' />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtgenerofilme" runat="server" MaxLength="50" Text='<%#Eval("generoFilme") %>' />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtgenerofilmeFooter" runat="server" />
                    </FooterTemplate>
                </asp:TemplateField>

                <%--template Produtora--%>
                <asp:TemplateField HeaderText="Produtora">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("produtoraFilme") %>' />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtprodutorafilme" runat="server" MaxLength="50" Text='<%#Eval("produtoraFilme") %>' />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtprodutorafilmeFooter" runat="server" />
                    </FooterTemplate>
                </asp:TemplateField>

                 <%--radio buttons--%>
                <asp:TemplateField HeaderText="Classificação">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("idClassificacao") %>' />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:RadioButtonList ID="rbl1" runat="server">
                            <asp:ListItem Value="1" Text=" Livre" />
                            <asp:ListItem Value="2" Text=" +18" />
                        </asp:RadioButtonList>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:RadioButtonList ID="rbl1" runat="server">
                            <asp:ListItem Value="1" Text=" Livre" />
                            <asp:ListItem Value="2" Text=" +18" />
                        </asp:RadioButtonList>
                    </FooterTemplate>
                </asp:TemplateField>


                <%--template Imagem--%>
              <asp:TemplateField HeaderText="Imagem">
                <ItemTemplate>
                    <asp:Image ImageUrl='<%#Eval("urlImagemFilme")%>' Width="100" Height="100" runat="server" />
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:FileUpload ID="fUp1" runat="server" Text="Selecione a Imagem" />
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:FileUpload ID="fUp1" runat="server" Text="Selecione a Imagem" />
                </FooterTemplate>
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:TemplateField>

                <%--buttons--%>
                <asp:TemplateField HeaderText="Opções">
                    <ItemTemplate>
                        <asp:ImageButton ID="btnEditar" runat="server" ImageUrl="~/img/updateB.png" ToolTip="Editar" Width="30" Height="30" CommandName="Edit" />
                        <asp:ImageButton ID="btnExcluir" runat="server" ImageUrl="~/img/deleteB.png" ToolTip="Excluir" Width="30" Height="30" CommandName="Delete" OnClientClick="if (!confirm('Deseja realmente eliminar este registro??'))return false" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:ImageButton ID="btnSalvar" runat="server" ImageUrl="~/img/saveB.png" ToolTip="Salvar" Width="30" Height="30" CommandName="Update" />
                        <asp:ImageButton ID="btnCancelar" runat="server" ImageUrl="~/img/cancel.png" ToolTip="Cancelar" Width="30" Height="30" CommandName="Cancel" />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:ImageButton ID="btnAdicionar" runat="server" ImageUrl="~/img/addB.png" ToolTip="Adicionar" Width="30" Height="30" CommandName="Add" />
                    </FooterTemplate>
                </asp:TemplateField>

            </Columns>
            </asp:GridView>
        <asp:Label ID="lblMessageF" runat="server" Text="Label"></asp:Label>
    </div>
</asp:Content>
