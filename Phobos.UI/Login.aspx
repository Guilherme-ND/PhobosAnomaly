<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Phobos.UI.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Login PhobosAnomaly</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <ul>
                <li>
                    <asp:TextBox ID="txtNome" runat="server" AutoCompleteType="Disabled" MaxLength="150" Width="50%" Placeholder="Nome:"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredNome" runat="server" ErrorMessage="Digite o nome do usuário !!" ForeColor="Red" ControlToValidate="txtNome"></asp:RequiredFieldValidator>
                </li>
                <li>
                    <asp:TextBox ID="txtSenha" runat="server" AutoCompleteType="Disabled" MaxLength="6" TextMode="Password" Width="50%" Placeholder="Senha:"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredSenha" runat="server" ErrorMessage="Digite a senha com 6 digitos !!" ForeColor="Red" ControlToValidate="txtSenha"></asp:RequiredFieldValidator>
                </li>
                <li>
                    <asp:Button ID="btnEntrar" runat="server" Text="Entrar" OnClick="btnEntrar_Click"/>
                    <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" OnClick="btnCancelar_Click"/>
                </li>
                <li>
                    <asp:Label ID="lblMessage" runat="server" Text="Label"></asp:Label>
                </li>
            </ul>
        </div>
    </form>
</body>
</html>
