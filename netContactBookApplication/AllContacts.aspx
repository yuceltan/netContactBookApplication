﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AllContacts.aspx.cs" Inherits="netContactBookApplication.AllContacts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowDeleting="GridView1_RowDeleting" Height="495px" Width="1120px">

            <Columns>
                <asp:CommandField ShowEditButton="true" />  
                        <asp:CommandField ShowDeleteButton="true" /> 
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
