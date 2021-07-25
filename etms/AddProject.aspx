<%@ Page Title="" Language="C#" MasterPageFile="~/Manager.Master" AutoEventWireup="true" CodeBehind="AddProject.aspx.cs" Inherits="etms.WebForm6" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <center>
    &nbsp;<asp:Panel ID="Panel1" runat="server" Height="316px" Width="644px" BackColor="#999999" style="margin-left: 0px; direction: ltr; background-color: #999999;">
            &nbsp;<br /> &nbsp;Project Title&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Height="15px" Width="150px"></asp:TextBox>
            <br />
            Project Description&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" Height="100px" TextMode="MultiLine" Width="150px"></asp:TextBox>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Project Start Date&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server" Height="15px" Width="150px" TextMode="DateTimeLocal"></asp:TextBox>
            &nbsp;&nbsp; (mm/dd/yyyy)<br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Project Estimated Time&nbsp;
            <asp:TextBox ID="TextBox4" runat="server" Height="15px" TextMode="DateTimeLocal" Width="150px"></asp:TextBox>
            &nbsp;&nbsp; (mm/dd/yyyy)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp; Project Status&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>Active</asp:ListItem>
                <asp:ListItem>Inactive</asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <asp:Button ID="addprojectbtn" runat="server" Text="Add Project" OnClick="addprojectbtn_Click" />
            <br />
            </asp:Panel>
            
             <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="project_Id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Height="134px" Width="480px">
                 <AlternatingRowStyle BackColor="White" />
                 <Columns>
                     <asp:BoundField DataField="project_Id" HeaderText="project_Id" InsertVisible="False" ReadOnly="True" SortExpression="project_Id" />
                     <asp:BoundField DataField="project_Title" HeaderText="project_Title" SortExpression="project_Title" />
                     <asp:BoundField DataField="project_Description" HeaderText="project_Description" SortExpression="project_Description" />
                     <asp:BoundField DataField="project_StartTime" HeaderText="project_StartTime" SortExpression="project_StartTime" />
                     <asp:BoundField DataField="project_EstimateTime" HeaderText="project_EstimateTime" SortExpression="project_EstimateTime" />
                     <asp:BoundField DataField="project_Manager_ID" HeaderText="project_Manager_ID" SortExpression="project_Manager_ID" />
                     <asp:BoundField DataField="project_Status" HeaderText="project_Status" SortExpression="project_Status" />
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

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [t_Project] WHERE [project_Id] = @original_project_Id AND [project_Title] = @original_project_Title AND [project_Description] = @original_project_Description AND [project_StartTime] = @original_project_StartTime AND [project_EstimateTime] = @original_project_EstimateTime AND [project_Manager_ID] = @original_project_Manager_ID AND [project_Status] = @original_project_Status" InsertCommand="INSERT INTO [t_Project] ([project_Title], [project_Description], [project_StartTime], [project_EstimateTime], [project_Manager_ID], [project_Status]) VALUES (@project_Title, @project_Description, @project_StartTime, @project_EstimateTime, @project_Manager_ID, @project_Status)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [t_Project]" UpdateCommand="UPDATE [t_Project] SET [project_Title] = @project_Title, [project_Description] = @project_Description, [project_StartTime] = @project_StartTime, [project_EstimateTime] = @project_EstimateTime, [project_Manager_ID] = @project_Manager_ID, [project_Status] = @project_Status WHERE [project_Id] = @original_project_Id AND [project_Title] = @original_project_Title AND [project_Description] = @original_project_Description AND [project_StartTime] = @original_project_StartTime AND [project_EstimateTime] = @original_project_EstimateTime AND [project_Manager_ID] = @original_project_Manager_ID AND [project_Status] = @original_project_Status">
        <DeleteParameters>
            <asp:Parameter Name="original_project_Id" Type="Int32" />
            <asp:Parameter Name="original_project_Title" Type="String" />
            <asp:Parameter Name="original_project_Description" Type="String" />
            <asp:Parameter Name="original_project_StartTime" Type="DateTime" />
            <asp:Parameter Name="original_project_EstimateTime" Type="DateTime" />
            <asp:Parameter Name="original_project_Manager_ID" Type="String" />
            <asp:Parameter Name="original_project_Status" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="project_Title" Type="String" />
            <asp:Parameter Name="project_Description" Type="String" />
            <asp:Parameter Name="project_StartTime" Type="DateTime" />
            <asp:Parameter Name="project_EstimateTime" Type="DateTime" />
            <asp:Parameter Name="project_Manager_ID" Type="String" />
            <asp:Parameter Name="project_Status" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="project_Title" Type="String" />
            <asp:Parameter Name="project_Description" Type="String" />
            <asp:Parameter Name="project_StartTime" Type="DateTime" />
            <asp:Parameter Name="project_EstimateTime" Type="DateTime" />
            <asp:Parameter Name="project_Manager_ID" Type="String" />
            <asp:Parameter Name="project_Status" Type="String" />
            <asp:Parameter Name="original_project_Id" Type="Int32" />
            <asp:Parameter Name="original_project_Title" Type="String" />
            <asp:Parameter Name="original_project_Description" Type="String" />
            <asp:Parameter Name="original_project_StartTime" Type="DateTime" />
            <asp:Parameter Name="original_project_EstimateTime" Type="DateTime" />
            <asp:Parameter Name="original_project_Manager_ID" Type="String" />
            <asp:Parameter Name="original_project_Status" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
