<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultUser.Master" AutoEventWireup="true" CodeBehind="ConsultaUser.aspx.cs" Inherits="Phobos.UI.Pages.ConsultaUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="geral">

        <asp:GridView runat="server" ID="dgv1" GridLines="None" AutoGenerateColumns="False" BackColor="Silver">
            
            <Columns>
                <asp:BoundField DataField="nomeUsuario" HeaderText="Name"/>
                <asp:BoundField DataField="emailUsuario" HeaderText="Email"/>
                <asp:BoundField DataField="descricaoTipoUsuario" HeaderText="Description type user"/>
            </Columns>

        </asp:GridView>

    </div>

</asp:Content>
