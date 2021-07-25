<%@ Page Title="" Language="C#" MasterPageFile="~/Manager.Master" AutoEventWireup="true" CodeBehind="AddEmployee.aspx.cs" Inherits="etms.WebForm5" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        <br />
    <center>
     <asp:Panel ID="Panel1" runat="server" Height="256px" Width="319px" BackColor="#999999" style="margin-left: 0px">
            <br />
            &nbsp;user Id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Height="15px" Width="120px"></asp:TextBox>
            <br />
            &nbsp;name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" Height="15px" Width="120px"></asp:TextBox>
            <br />
            &nbsp;address&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server" Height="15px" Width="120px"></asp:TextBox>
            <br />
            &nbsp;phone no&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox4" runat="server" Height="15px" Width="120px" TextMode="Phone"></asp:TextBox>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox5" runat="server"  Height="15px" Width="120px" TextMode="Email"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;create password&nbsp; <asp:TextBox ID="TextBox7" runat="server" Height="15px" Width="120px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="addemployeebtn" runat="server" Text="Add Employee" OnClick="addemployeebtn_Click" />
            <br />
          </asp:Panel> 
            
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="user_Id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Width="413px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="user_Id" HeaderText="user_Id" ReadOnly="True" SortExpression="user_Id" />
                    <asp:BoundField DataField="user_Name" HeaderText="user_Name" SortExpression="user_Name" />
                    <asp:BoundField DataField="user_Address" HeaderText="user_Address" SortExpression="user_Address" />
                    <asp:BoundField DataField="user_PhoneNo" HeaderText="user_PhoneNo" SortExpression="user_PhoneNo" />
                    <asp:BoundField DataField="user_Email" HeaderText="user_Email" SortExpression="user_Email" />
                    <asp:BoundField DataField="user_Department" HeaderText="user_Department" SortExpression="user_Department" />
                    <asp:BoundField DataField="user_Role" HeaderText="user_Role" SortExpression="user_Role" />
                    <asp:BoundField DataField="user_Password" HeaderText="user_Password" SortExpression="user_Password" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
            </asp:GridView>
        </center>
       
        <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
        
       
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="spGetEmployee" SelectCommandType="StoredProcedure" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [t_User] WHERE [user_Id] = @original_user_Id AND [user_Name] = @original_user_Name AND [user_Address] = @original_user_Address AND [user_PhoneNo] = @original_user_PhoneNo AND [user_Email] = @original_user_Email AND (([user_Department] = @original_user_Department) OR ([user_Department] IS NULL AND @original_user_Department IS NULL)) AND [user_Role] = @original_user_Role AND [user_Password] = @original_user_Password" InsertCommand="INSERT INTO [t_User] ([user_Id], [user_Name], [user_Address], [user_PhoneNo], [user_Email], [user_Department], [user_Role], [user_Password]) VALUES (@user_Id, @user_Name, @user_Address, @user_PhoneNo, @user_Email, @user_Department, @user_Role, @user_Password)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [t_User] SET [user_Name] = @user_Name, [user_Address] = @user_Address, [user_PhoneNo] = @user_PhoneNo, [user_Email] = @user_Email, [user_Department] = @user_Department, [user_Role] = @user_Role, [user_Password] = @user_Password WHERE [user_Id] = @original_user_Id AND [user_Name] = @original_user_Name AND [user_Address] = @original_user_Address AND [user_PhoneNo] = @original_user_PhoneNo AND [user_Email] = @original_user_Email AND (([user_Department] = @original_user_Department) OR ([user_Department] IS NULL AND @original_user_Department IS NULL)) AND [user_Role] = @original_user_Role AND [user_Password] = @original_user_Password">
        <DeleteParameters>
            <asp:Parameter Name="original_user_Id" Type="String" />
            <asp:Parameter Name="original_user_Name" Type="String" />
            <asp:Parameter Name="original_user_Address" Type="String" />
            <asp:Parameter Name="original_user_PhoneNo" Type="String" />
            <asp:Parameter Name="original_user_Email" Type="String" />
            <asp:Parameter Name="original_user_Department" Type="String" />
            <asp:Parameter Name="original_user_Role" Type="String" />
            <asp:Parameter Name="original_user_Password" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="user_Id" Type="String" />
            <asp:Parameter Name="user_Name" Type="String" />
            <asp:Parameter Name="user_Address" Type="String" />
            <asp:Parameter Name="user_PhoneNo" Type="String" />
            <asp:Parameter Name="user_Email" Type="String" />
            <asp:Parameter Name="user_Department" Type="String" />
            <asp:Parameter Name="user_Role" Type="String" />
            <asp:Parameter Name="user_Password" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="user_Name" Type="String" />
            <asp:Parameter Name="user_Address" Type="String" />
            <asp:Parameter Name="user_PhoneNo" Type="String" />
            <asp:Parameter Name="user_Email" Type="String" />
            <asp:Parameter Name="user_Department" Type="String" />
            <asp:Parameter Name="user_Role" Type="String" />
            <asp:Parameter Name="user_Password" Type="String" />
            <asp:Parameter Name="original_user_Id" Type="String" />
            <asp:Parameter Name="original_user_Name" Type="String" />
            <asp:Parameter Name="original_user_Address" Type="String" />
            <asp:Parameter Name="original_user_PhoneNo" Type="String" />
            <asp:Parameter Name="original_user_Email" Type="String" />
            <asp:Parameter Name="original_user_Department" Type="String" />
            <asp:Parameter Name="original_user_Role" Type="String" />
            <asp:Parameter Name="original_user_Password" Type="String" />
        </UpdateParameters>
        </asp:SqlDataSource>
        
       
</asp:Content>
