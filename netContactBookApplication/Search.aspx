<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="netContactBookApplication.Search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <link rel="stylesheet" href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/css/bootstrap.min.css'
          media="screen" />
    <div class="navbar navbar-default">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
                        aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="Main/Index">Contact Book Application</a>
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <div id="Menu1">
                    <ul class="nav navbar-nav">
                        <li><a class="selected" href="~/Main/Index">Home</a></li>

                        <li><a href="Home/Register">Register</a></li>
                        <li><a href="AllContacts.aspx">Contacts</a></li>
                        <li>
                            <a class="popout" href="#">Features</a><ul class="level2 dropdown-menu">
                                <li><a class="" href="Search.aspx">Search Contact</a></li>
                                <li><a class="" href="BirthdayCurrentWeek.aspx">Birthdays in current week</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript" src='https://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.3.min.js'></script>
    <script type="text/javascript" src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/js/bootstrap.min.js'></script>
    <script type="text/javascript">
        $(function () {
            //Remove the style attributes.
            $(".navbar-nav li, .navbar-nav a, .navbar-nav ul").removeAttr('style');

            //Apply the Bootstrap class to the Submenu.
            $(".dropdown-menu").closest("li").removeClass().addClass("dropdown-toggle");

            //Apply the Bootstrap properties to the Submenu.
            $(".dropdown-toggle").find("a").eq(0).attr("data-toggle", "dropdown").attr("aria-haspopup", "true").attr("aria-expanded", "false").append("<span class='caret'></span>");

            //Apply the Bootstrap "active" class to the selected Menu item.
            $("a.selected").closest("li").addClass("active");
            $("a.selected").closest(".dropdown-toggle").addClass("active");
        });
    </script>
    <h2 style="text-align: left">Search a contact</h2>
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
