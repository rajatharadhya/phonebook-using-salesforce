<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registerpage.aspx.cs" Inherits="Phonebookusingsalesforce.registerpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <span class="auto-style1">Enter Username</span><br />
        <asp:TextBox ID="TextBox1" runat="server" Height="32px" Width="247px"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="UserName is Missing" SetFocusOnError="True">*</asp:RequiredFieldValidator>
        <br />
        <br />
        <span class="auto-style1">Enter Password</span><br />
        <asp:TextBox type="password" ID="TextBox2" runat="server" Height="29px" Width="244px"></asp:TextBox>
        <br />
        <br />
        <span class="auto-style1">Re-Enter Password</span><br />
        <asp:TextBox type="password" ID="TextBox3" runat="server" Height="24px" Width="241px"></asp:TextBox>
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="submit" Font-Size="X-Large" Height="51px" Width="152px" />
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
