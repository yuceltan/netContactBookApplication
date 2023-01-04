<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="netContactBookApplication.Search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Search Contact Name:<asp:TextBox ID="TextBox1" runat="server" Width="163px"></asp:TextBox>
        </div>
        <asp:Button ID="Button1" runat="server" Font-Bold="True" Height="51px" OnClick="Button1_Click" Text="Search Name" Width="130px" />
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Surname" HeaderText="Surname" SortExpression="Surname" />
                <asp:BoundField DataField="Number" HeaderText="Number" SortExpression="Number" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="BirthDate" HeaderText="BirthDate" SortExpression="BirthDate" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:yuceltandbConnectionString %>" SelectCommand="SELECT * FROM [ContactDB] WHERE ([Name] = @Name)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="Name" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <p>
            Search Contact Surname:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </p>
        <asp:Button ID="Button2" runat="server" Font-Bold="True" Height="61px" Text="Search Surname" Width="130px" />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSourceSurname">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Surname" HeaderText="Surname" SortExpression="Surname" />
                <asp:BoundField DataField="Number" HeaderText="Number" SortExpression="Number" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="BirthDate" HeaderText="BirthDate" SortExpression="BirthDate" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceSurname" runat="server" ConnectionString="<%$ ConnectionStrings:yuceltandbConnectionString %>" SelectCommand="SELECT * FROM [ContactDB] WHERE ([Surname] = @Surname)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox2" Name="Surname" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <p>
            Search Contact Phone Number:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Button3" runat="server" Font-Bold="True" Height="61px" Text="Search Phone " Width="130px" />
        </p>
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSourceNumber">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Surname" HeaderText="Surname" SortExpression="Surname" />
                <asp:BoundField DataField="Number" HeaderText="Number" SortExpression="Number" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="BirthDate" HeaderText="BirthDate" SortExpression="BirthDate" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceNumber" runat="server" ConnectionString="<%$ ConnectionStrings:yuceltandbConnectionString %>" SelectCommand="SELECT * FROM [ContactDB] WHERE ([Number] = @Number)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox3" Name="Number" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <div>
            <p>
                Search Contact E-mail:<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </p>
        </div>
        <p>
            <asp:Button ID="Button4" runat="server" Font-Bold="True" Height="61px" Text="Search Phone " Width="130px" />
        </p>
        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSourceEmail" Width="371px">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Surname" HeaderText="Surname" SortExpression="Surname" />
                <asp:BoundField DataField="Number" HeaderText="Number" SortExpression="Number" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="BirthDate" HeaderText="BirthDate" SortExpression="BirthDate" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceEmail" runat="server" ConnectionString="<%$ ConnectionStrings:yuceltandbConnectionString %>" SelectCommand="SELECT * FROM [ContactDB] WHERE ([Email] = @Email)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox4" Name="Email" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <p>
            Search Contact Birth Date:<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Button5" runat="server" Font-Bold="True" Height="61px" Text="Search Phone " Width="130px" />
        </p>
        <p>
            <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSourceBirth">
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Surname" HeaderText="Surname" SortExpression="Surname" />
                    <asp:BoundField DataField="Number" HeaderText="Number" SortExpression="Number" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="BirthDate" HeaderText="BirthDate" SortExpression="BirthDate" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSourceBirth" runat="server" ConnectionString="<%$ ConnectionStrings:yuceltandbConnectionString %>" SelectCommand="SELECT * FROM [ContactDB] WHERE ([BirthDate] = @BirthDate)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox5" Name="BirthDate" PropertyName="Text" DbType="Date" />
                </SelectParameters>
            </asp:SqlDataSource>
        </p>
    </form>
</body>
</html>
