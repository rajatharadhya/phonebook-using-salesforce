<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="getdata.aspx.cs" Inherits="Phonebookusingsalesforce.getdata" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="defaultUrl" runat="server">
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx" style="z-index: 1; left: 1014px; top: 15px; position: absolute">Log Out</asp:HyperLink>
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Addcontacttophonebook.aspx">Add new contact</asp:HyperLink>
        <br />
        <br />
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Fetch Phonebook" Width="116px" />
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="font-weight: 700; position: absolute; z-index: 1; left: 432px; top: 96px" Text="Delete Contact" />
        <br />
        <asp:TextBox ID="tb" runat="server"></asp:TextBox>
        First Name<asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
        Emailid<br />
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <br />
               <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false">
<Columns>



    <asp:TemplateField HeaderText="First Name">
            <ItemTemplate>
                <asp:TextBox ID="fname" runat="server" Text ='<%# Bind("fname__c") %>' ReadOnly="true">'></asp:TextBox>
            </ItemTemplate>
        </asp:TemplateField>

    <asp:TemplateField HeaderText="Last Name">
            <ItemTemplate>
                <asp:TextBox ID="lname" runat="server" Text ='<%# Bind("lname__c") %>' ReadOnly="true">'></asp:TextBox>
            </ItemTemplate>
        </asp:TemplateField>

     <asp:TemplateField HeaderText="Email">
            <ItemTemplate>
                <asp:TextBox ID="email" runat="server" Text ='<%#Bind("email__c") %>' ReadOnly="true">'></asp:TextBox>
            </ItemTemplate>
        </asp:TemplateField>

     <asp:TemplateField HeaderText="Mobile">
            <ItemTemplate>
                <asp:TextBox ID="mphone" runat="server" Text ='<%# Bind( "mphone__c") %>' ReadOnly="true">'></asp:TextBox>
            </ItemTemplate>
        </asp:TemplateField>
      <asp:TemplateField HeaderText="Home Phone">
            <ItemTemplate>
                <asp:TextBox ID="hphone" runat="server" Text ='<%#Bind( "hphone__c") %>' ReadOnly="true">'></asp:TextBox>
            </ItemTemplate>
        </asp:TemplateField>


</Columns>
</asp:GridView>
        <strong>Enter First Name and corresponding emailID to delete.<br />
        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Search Contact" />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </strong>
        <br />
        <br />
        <br />
        <br />
        <br />
    </form>
</body>
</html>
