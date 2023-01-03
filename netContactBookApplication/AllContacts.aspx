<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AllContacts.aspx.cs" Inherits="netContactBookApplication.AllContacts" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="SearchButton" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="XX-Large" Font-Underline="True" Height="146px" Text="Search" Width="245px" />
            <asp:Button ID="AddNewContact" runat="server" Font-Bold="True" Font-Size="X-Large" Font-Strikeout="False" Font-Underline="True" Height="146px" Text="Add New Contact" Width="245px" />
            <asp:Button ID="Button3" runat="server" Height="146px" Text="Button" Width="245px" OnClick="Button3_Click" />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" Height="616px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" Width="1180px">
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Surname" HeaderText="Surname" SortExpression="Surname" />
                    <asp:BoundField DataField="Number" HeaderText="Number" SortExpression="Number" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="BirthDate" HeaderText="BirthDate" SortExpression="BirthDate" />
                    <asp:ButtonField ButtonType="Button" CommandName="Edit" HeaderText="Edit" ShowHeader="True" Text="Edit" />
                    <asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="Display Birthday in Current Week" ShowHeader="True" Text="Display Birthday in Current Week" />
                    <asp:ButtonField ButtonType="Button" CommandName="Delete" HeaderText="Delete" ShowHeader="True" Text="Delete" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:yuceltandbConnectionString %>" SelectCommand="SELECT [ID], [Name], [Surname], [Number], [Email], [BirthDate] FROM [ContactRecords]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>

