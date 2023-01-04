using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace netContactBookApplication
{
    public partial class AllContacts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-O9VG8LB\SQLEXPRESS;Initial Catalog=yuceltandb;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework");



            con.Open();

            SqlCommand cmd = new SqlCommand("SELECT * FROM ContactDB", con);
            SqlDataReader rdr = cmd.ExecuteReader();
            GridView1.DataSource = rdr;
            GridView1.DataBind();
            con.Close();


        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void gvbind()
        {
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-O9VG8LB\SQLEXPRESS;Initial Catalog=yuceltandb;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework");
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from ContactDB", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();
            if (ds.Tables[0].Rows.Count > 0)
            {
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
            else
            {
                ds.Tables[0].Rows.Add(ds.Tables[0].NewRow());
                GridView1.DataSource = ds;
                GridView1.DataBind();
                int columncount = GridView1.Rows[0].Cells.Count;
                GridView1.Rows[0].Cells.Clear();
                GridView1.Rows[0].Cells.Add(new TableCell());
                GridView1.Rows[0].Cells[0].ColumnSpan = columncount;
                GridView1.Rows[0].Cells[0].Text = "No Records Found";
            }
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-O9VG8LB\SQLEXPRESS;Initial Catalog=yuceltandb;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework");

            GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
           
            con.Open();
            SqlCommand cmd = new SqlCommand("DELETE FROM ContactDB WHERE ID = ID");
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            con.Close();
            gvbind();


        }
    }
}