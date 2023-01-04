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
           <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" Height="339px" Width="830px">  
                    <Columns>  
                        <asp:BoundField DataField="ID" HeaderText="ID." />  
                        <asp:BoundField DataField="Name" HeaderText="Name" />  
                        <asp:BoundField DataField="Surname" HeaderText="Surname" />  
                        <asp:BoundField DataField="Number" HeaderText="Number" />  
                        <asp:BoundField DataField="Email" HeaderText="Email" />  
                        <asp:BoundField DataField="BirthDate" HeaderText="BirthDate" />  
                        <asp:CommandField ShowEditButton="true" />  
                        <asp:CommandField ShowDeleteButton="true" /> 
                        
                    </Columns>  
                       
                    
                </asp:GridView>  

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:yuceltandbConnectionString %>" SelectCommand="SELECT [ID], [Name], [Surname], [Number], [Email], [BirthDate] FROM [ContactRecords]" OnSelecting="SqlDataSource1_Selecting" DeleteCommand ="DELETE FROM [ContactRecords] WHERE [ID] = ?"></asp:SqlDataSource>

        </div>
    </form>
</body>
</html>

