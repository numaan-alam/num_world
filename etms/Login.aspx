<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="etms.Login" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body style="height: 387px">
    <form id="form1" runat="server">
    <div>
    <center style="font-weight: 700; background-color: #669999;">
        <br />
        <asp:Label ID="Label2" runat="server" Font-Size="XX-Large" Text="EmployeeTask Management System"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Panel ID="Panel1" runat="server" Height="182px" style="margin-left: 8px; margin-top: 0px; background-color: #CCCCCC;" Width="251px">
            <br />
            Login<br /> <br />
            userId&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Height="15px" Width="120px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            <br />
            password
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Height="15px" Width="120px"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </asp:Panel>
        <br />
        <br />
        <br />
        <br />
        </center>
    </div>
    </form>
</body>
</html>

