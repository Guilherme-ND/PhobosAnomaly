<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultUser.Master" AutoEventWireup="true" CodeBehind="IndexUser.aspx.cs" Inherits="Phobos.UI.Pages.IndexUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/styleP.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="base">
        <h1 id="user">Users</h1>
        <asp:GridView runat="server" ID="dgv1" GridLines="None" AutoGenerateColumns="False">
            
            <Columns>
                <asp:BoundField DataField="nomeUsuario" HeaderText="Name"/>
                <asp:BoundField DataField="emailUsuario" HeaderText="Email"/>
                <asp:BoundField DataField="descricaoTipoUsuario" HeaderText="Description type user"/>
            </Columns>

        </asp:GridView>

    </div>

    <div class="base">
        <h1 id="movie">Movie</h1>
        <asp:GridView runat="server" ID="dgv2" GridLines="None" AutoGenerateColumns="False">
            
            <Columns>
                <asp:BoundField DataField="tituloFilme" HeaderText="Title"/>
                <asp:BoundField DataField="generoFilme" HeaderText="Genre"/>
                <asp:BoundField DataField="produtoraFilme" HeaderText="Producer"/>
                <asp:BoundField DataField="descricaoClassificacao" HeaderText="Description"/>
                <asp:ImageField DataImageUrlField="urlImagemFilme" HeaderText="Image" ControlStyle-Width="150" ControlStyle-Height="150"/>
            </Columns>

        </asp:GridView>

    </div>

</asp:Content>
