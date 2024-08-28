<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Email_Integration.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            Email ID&nbsp;&nbsp;
            <asp:ListBox ID="ListBox1" runat="server" SelectionMode="Multiple">
                <asp:ListItem>jaygulvi7077@gmail.com</asp:ListItem>
                <asp:ListItem>vaishnavghangale19@gmail.com</asp:ListItem>
                <asp:ListItem>rajeshnarkar005@gmail.com</asp:ListItem>
            </asp:ListBox>
            <br />
            <br />
            Subject&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            Message&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <br />
            Attchment&nbsp;
            <asp:FileUpload ID="FileUpload1" runat="server" AllowMultiple="true" />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Height="33px" OnClick="Button1_Click" Text="SEND" Width="81px" />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
