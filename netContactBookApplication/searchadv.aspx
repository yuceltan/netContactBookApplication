<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="searchadv.aspx.cs" Inherits="netContactBookApplication.searchadv" %>

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
                                <li><a class="" href="searchadv.aspx">Search Contact</a></li>
                                <li><a class="" href="birthdayajax.aspx">Birthdays in current week</a></li>
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
            <asp:TextBox ID="txtSearch" runat="server" OnTextChanged="txtSearch_TextChanged" />
<asp:Button Text="Search" runat="server" OnClick="Search" />
<hr />
<asp:GridView ID="gridview1" runat="server" AutoGenerateColumns="false" AllowPaging="true" OnRowDataBound="OnRowDataBound" OnPageIndexChanging="OnPageIndexChanging">
<Columns>
  <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Surname" HeaderText="Surname" SortExpression="Surname" />
                <asp:BoundField DataField="Number" HeaderText="Number" SortExpression="Number" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="BirthDate" HeaderText="BirthDate" SortExpression="BirthDate" />
</Columns>
</asp:GridView>
        </div>
    </form>
</body>
</html>
