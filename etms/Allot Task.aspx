<%@ Page Title="" Language="C#" MasterPageFile="~/Manager.Master" AutoEventWireup="true" CodeBehind="Allot Task.aspx.cs" Inherits="etms.WebForm8" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    </br><center>
    <asp:Panel ID="Panel1" runat="server" Height="355px" Width="590px" BackColor="#999999" style="margin-left: 0px; direction: ltr; background-color: #999999; text-align: left;">
            &nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;Task Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Height="15px" Width="150px"></asp:TextBox>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Task Description&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" Height="100px" TextMode="MultiLine" Width="150px"></asp:TextBox>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Project Title&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Width="157px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            </asp:DropDownList>
            &nbsp;
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="get project id" />
            &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Employee Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList2" runat="server" OnInit="DropDownList2_Init" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" OnTextChanged="DropDownList2_TextChanged1" Width="157px">
            </asp:DropDownList>
            &nbsp;
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="get employee id" Width="114px" />
&nbsp;
            <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Task Start Date&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server" Height="15px" TextMode="DateTimeLocal" Width="150px"></asp:TextBox>
            &nbsp;&nbsp; (mm/dd/yyyy)<br /> &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Task Estimated Date&nbsp;
            <asp:TextBox ID="TextBox4" runat="server" Height="15px" TextMode="DateTimeLocal" Width="150px"></asp:TextBox>
            &nbsp;&nbsp; (mm/dd/yyyy)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Task Status&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList3" runat="server">
                <asp:ListItem>Active</asp:ListItem>
                <asp:ListItem>Inactive</asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp;
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="Create" OnClick="Button2_Click" />
            <br />
            </asp:Panel>
            
             
    <asp:GridView ID="GridView1" runat="server" Width="498px" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="task_Id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Height="201px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="task_Id" HeaderText="task_Id" InsertVisible="False" ReadOnly="True" SortExpression="task_Id" />
            <asp:BoundField DataField="task_Name" HeaderText="task_Name" SortExpression="task_Name" />
            <asp:BoundField DataField="task_Description" HeaderText="task_Description" SortExpression="task_Description" />
            <asp:BoundField DataField="task_Project_Title" HeaderText="task_Project_Title" SortExpression="task_Project_Title" />
            <asp:BoundField DataField="task_StartDate" HeaderText="task_StartDate" SortExpression="task_StartDate" />
            <asp:BoundField DataField="task_EstimateTime" HeaderText="task_EstimateTime" SortExpression="task_EstimateTime" />
            <asp:BoundField DataField="task_Employee_Name" HeaderText="task_Employee_Name" SortExpression="task_Employee_Name" />
            <asp:BoundField DataField="task_Project_Id" HeaderText="task_Project_Id" SortExpression="task_Project_Id" />
            <asp:BoundField DataField="task_Employee_Id" HeaderText="task_Employee_Id" SortExpression="task_Employee_Id" />
            <asp:BoundField DataField="task_Status" HeaderText="task_Status" SortExpression="task_Status" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [t_Task] WHERE [task_Id] = @original_task_Id AND [task_Name] = @original_task_Name AND (([task_Description] = @original_task_Description) OR ([task_Description] IS NULL AND @original_task_Description IS NULL)) AND [task_Project_Title] = @original_task_Project_Title AND [task_StartDate] = @original_task_StartDate AND (([task_EstimateTime] = @original_task_EstimateTime) OR ([task_EstimateTime] IS NULL AND @original_task_EstimateTime IS NULL)) AND [task_Employee_Name] = @original_task_Employee_Name AND [task_Project_Id] = @original_task_Project_Id AND [task_Employee_Id] = @original_task_Employee_Id AND (([task_Status] = @original_task_Status) OR ([task_Status] IS NULL AND @original_task_Status IS NULL))" InsertCommand="INSERT INTO [t_Task] ([task_Name], [task_Description], [task_Project_Title], [task_StartDate], [task_EstimateTime], [task_Employee_Name], [task_Project_Id], [task_Employee_Id], [task_Status]) VALUES (@task_Name, @task_Description, @task_Project_Title, @task_StartDate, @task_EstimateTime, @task_Employee_Name, @task_Project_Id, @task_Employee_Id, @task_Status)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [t_Task]" UpdateCommand="UPDATE [t_Task] SET [task_Name] = @task_Name, [task_Description] = @task_Description, [task_Project_Title] = @task_Project_Title, [task_StartDate] = @task_StartDate, [task_EstimateTime] = @task_EstimateTime, [task_Employee_Name] = @task_Employee_Name, [task_Project_Id] = @task_Project_Id, [task_Employee_Id] = @task_Employee_Id, [task_Status] = @task_Status WHERE [task_Id] = @original_task_Id AND [task_Name] = @original_task_Name AND (([task_Description] = @original_task_Description) OR ([task_Description] IS NULL AND @original_task_Description IS NULL)) AND [task_Project_Title] = @original_task_Project_Title AND [task_StartDate] = @original_task_StartDate AND (([task_EstimateTime] = @original_task_EstimateTime) OR ([task_EstimateTime] IS NULL AND @original_task_EstimateTime IS NULL)) AND [task_Employee_Name] = @original_task_Employee_Name AND [task_Project_Id] = @original_task_Project_Id AND [task_Employee_Id] = @original_task_Employee_Id AND (([task_Status] = @original_task_Status) OR ([task_Status] IS NULL AND @original_task_Status IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_task_Id" Type="Int32" />
                <asp:Parameter Name="original_task_Name" Type="String" />
                <asp:Parameter Name="original_task_Description" Type="String" />
                <asp:Parameter Name="original_task_Project_Title" Type="String" />
                <asp:Parameter Name="original_task_StartDate" Type="DateTime" />
                <asp:Parameter Name="original_task_EstimateTime" Type="DateTime" />
                <asp:Parameter Name="original_task_Employee_Name" Type="String" />
                <asp:Parameter Name="original_task_Project_Id" Type="Int32" />
                <asp:Parameter Name="original_task_Employee_Id" Type="String" />
                <asp:Parameter Name="original_task_Status" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="task_Name" Type="String" />
                <asp:Parameter Name="task_Description" Type="String" />
                <asp:Parameter Name="task_Project_Title" Type="String" />
                <asp:Parameter Name="task_StartDate" Type="DateTime" />
                <asp:Parameter Name="task_EstimateTime" Type="DateTime" />
                <asp:Parameter Name="task_Employee_Name" Type="String" />
                <asp:Parameter Name="task_Project_Id" Type="Int32" />
                <asp:Parameter Name="task_Employee_Id" Type="String" />
                <asp:Parameter Name="task_Status" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="task_Name" Type="String" />
                <asp:Parameter Name="task_Description" Type="String" />
                <asp:Parameter Name="task_Project_Title" Type="String" />
                <asp:Parameter Name="task_StartDate" Type="DateTime" />
                <asp:Parameter Name="task_EstimateTime" Type="DateTime" />
                <asp:Parameter Name="task_Employee_Name" Type="String" />
                <asp:Parameter Name="task_Project_Id" Type="Int32" />
                <asp:Parameter Name="task_Employee_Id" Type="String" />
                <asp:Parameter Name="task_Status" Type="String" />
                <asp:Parameter Name="original_task_Id" Type="Int32" />
                <asp:Parameter Name="original_task_Name" Type="String" />
                <asp:Parameter Name="original_task_Description" Type="String" />
                <asp:Parameter Name="original_task_Project_Title" Type="String" />
                <asp:Parameter Name="original_task_StartDate" Type="DateTime" />
                <asp:Parameter Name="original_task_EstimateTime" Type="DateTime" />
                <asp:Parameter Name="original_task_Employee_Name" Type="String" />
                <asp:Parameter Name="original_task_Project_Id" Type="Int32" />
                <asp:Parameter Name="original_task_Employee_Id" Type="String" />
                <asp:Parameter Name="original_task_Status" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </center>
    <br />
    <br />
    <br />
    </br>
</asp:Content>
