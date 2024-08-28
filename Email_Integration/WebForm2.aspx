<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Email_Integration.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Email:
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <br />
            <br />
            ID: <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            Name: <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            Salary:
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Height="37px" OnClick="Button1_Click" Text="Button" Width="133px" />
            <br />
        </div>
    </form>
</body>
</html>
