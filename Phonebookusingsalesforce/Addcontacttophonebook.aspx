<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Addcontacttophonebook.aspx.cs" Inherits="Phonebookusingsalesforce.Addcontacttophonebook" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
            <asp:TextBox ID="fname" runat="server"></asp:TextBox>FIRST NAME<br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="fname" ErrorMessage="Enter valid First Name" SetFocusOnError="True">Enter First Name</asp:RequiredFieldValidator>
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Logout.aspx" style="z-index: 1; left: 1008px; top: 34px; position: absolute">Logout</asp:HyperLink>
            <asp:TextBox ID="lname" runat="server"></asp:TextBox>LAST NAME<br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="lname" ErrorMessage="Enter valid Second Name" SetFocusOnError="True">Enter Second Name</asp:RequiredFieldValidator>
        <br />
            <asp:TextBox ID="email" runat="server"></asp:TextBox>&nbsp;EMAIL<br />
         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="email" ErrorMessage="Enter email" SetFocusOnError="True">Enter email</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" ErrorMessage="Enter valid Email" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Enter Valid email-id</asp:RegularExpressionValidator>
            <br />
            <asp:TextBox ID="hphone" runat="server"></asp:TextBox> HOME PHONE<br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="hphone" ErrorMessage="Enter valid home number" SetFocusOnError="True">Enter home number</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="hphone" ErrorMessage="Enter Correct home number" SetFocusOnError="True" ValidationExpression="(\d{10})">Enter the valid home number</asp:RegularExpressionValidator>
            <br />
            <asp:TextBox ID="mphone" runat="server"></asp:TextBox> MOBILE PHONE<br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="mphone" ErrorMessage="Enter valid mobile number" SetFocusOnError="True">Enter mobile number</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="mphone" ErrorMessage="Enter Correct mobile number" SetFocusOnError="True" ValidationExpression="(\d{10})">Enter a valid Mobile number</asp:RegularExpressionValidator>
            <br />
           
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Add" Width="59px" />
    
    </div>
    </form>
</body>
</html>
