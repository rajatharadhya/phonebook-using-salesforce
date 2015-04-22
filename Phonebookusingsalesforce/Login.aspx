<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Phonebookusingsalesforce.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: large;
        }
        .auto-style2 {
            font-size: xx-large;
        }
        .auto-style3 {
            text-align: center;
        }
    </style>
</head>
<body style="text-align: left">
    <form id="loginUrl" runat="server">
    <div class="auto-style3">
    
        <strong><span class="auto-style2">Enter the User name<asp:TextBox ID="TextBox1" runat="server" Height="28px" Width="232px" Font-Size="X-Large"></asp:TextBox>
        </span></strong>
    
        <br />
        <br />
        <strong><span class="auto-style2">Enter the Password</span><span class="auto-style1"><asp:TextBox type="password" ID="TextBox2" runat="server" Height="26px" Width="237px" Font-Size="X-Large"></asp:TextBox>
        </span></strong>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Log in" Font-Size="X-Large" Width="82px" />
        <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" Font-Italic="True" Font-Underline="True" ForeColor="Red"></asp:Label>
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/registerpage.aspx" Font-Size="X-Large">New user ??? Click here.</asp:HyperLink>
    
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
