<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="netContactBookApplication.test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
   <form id="form1" runat="server">
            <table class ="style1" bgcolor ="gray">
                                               <asp:GridView ID="GridAllRecord" runat="server" AutoGenerateColumns="false" AllowPaging="true"
                                    OnPageIndexChanging="OnPageIndexChanging" PageSize="10">
                                    <Columns>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="CustomerID" HeaderText="Customer ID" />
                                        <asp:BoundField ItemStyle-Width="150px" DataField="ContactName" HeaderText="Contact Name" />
                                        <asp:BoundField ItemStyle-Width="150px" DataField="City" HeaderText="City" />
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Country" HeaderText="Country" />
                                    </Columns>
                                </asp:GridView>
                 </table>
    </form>
</body>
</html>
