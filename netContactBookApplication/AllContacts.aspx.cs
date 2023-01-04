using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

namespace netContactBookApplication
{
    public partial class AllContacts : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
       
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
            SqlCommand cmd = new SqlCommand("Delete From ContactRecords (Name,Surname,Number,Email,BirthDate)");
            GridView1.DataBind();


        }
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
           
        }
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
           
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
          
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
        }
        protected void AddNewContact_Click(object sender, EventArgs e)
        {
            Response.Redirect("Index.cshtml");
        }
        

        protected void Button3_Click(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {


        }

        protected void SearchButton_Click(object sender, EventArgs e)
        {

        }

        protected void AddNewContact_Click1(object sender, EventArgs e)
        {

        }
        protected void  DeleteCommand(object source, DataListCommandEventArgs e)
        {
         
        }
    }
    }
