using netContactBookApplication.Models;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.UI;
using System.Web.UI.DataVisualization.Charting;
using System.Web.UI.WebControls;

namespace netContactBookApplication
{
    public partial class AllContacts : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-O9VG8LB\SQLEXPRESS;Initial Catalog=yuceltandb;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                this.BindGrid();
            }


        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void OnRowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int ID = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            string constr = ConfigurationManager.ConnectionStrings["yuceltandbConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("DELETE FROM ContactDB WHERE ID = @ID"))
                {
                    cmd.Parameters.AddWithValue("@ID", ID);
                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
            this.BindGrid();

            // MY OLD CODES

            /* GridViewRow row = ContactDB.SelectedRow;
             Delete.Text = row.Cells[1].Text;

             int rowindex = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
             int bookID = Convert.ToInt32(GridView1.Rows[rowindex].Cells[1].Text);


             SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-O9VG8LB\SQLEXPRESS;Initial Catalog=yuceltandb;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework");
             con.Open();
             SqlCommand cmd = new SqlCommand("DELETE ContactDB WHERE ID ='"+bookID+"'",con);
             cmd.ExecuteNonQuery();
             con.Close();
             cmd.Connection = con;
             ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Contact is deleted');", true);*/

            /*GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
            con.Open();

            

            int ID = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            string strcmd = "DELETE FROM ContactDB WHERE Name='" + @ID + "'";
            SqlCommand cmd = new SqlCommand(strcmd);
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            con.Close();
            gvbind();*/


        }
        protected void OnRowCancelingEdit(object sender, EventArgs e)
        {
            GridView1.EditIndex = -1;
            this.BindGrid();
        }

        protected void OnRowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];
            int ID = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            string Name = (row.Cells[3].Controls[0] as TextBox).Text;
            string Surname = (row.Cells[4].Controls[0] as TextBox).Text;
            int Number = int.Parse((row.Cells[5].Controls[0] as TextBox).Text);
            string Email = (row.Cells[6].Controls[0] as TextBox).Text;
            string BirthDate = (row.Cells[7].Controls[0] as TextBox).Text;



            string constr = ConfigurationManager.ConnectionStrings["yuceltandbConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("UPDATE ContactDB SET Name = @Name, Surname = @Surname,Number=@Number,Email = @Email,BirthDate = @BirthDate WHERE ID = @ID"))
                {
                    cmd.Parameters.AddWithValue("@ID", ID);
                    cmd.Parameters.AddWithValue("@Name", Name);
                    cmd.Parameters.AddWithValue("@Surname", Surname);
                    cmd.Parameters.AddWithValue("@Number", Number);
                    cmd.Parameters.AddWithValue("@Email", Email);
                    cmd.Parameters.AddWithValue("@BirthDate", BirthDate);

                    cmd.Connection = con;
                    con.Open();
                    
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
            GridView1.EditIndex = -1;
            this.BindGrid();
        }
        protected void OnRowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            this.BindGrid();
        }


        protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow && e.Row.RowIndex != GridView1.EditIndex)
            {
                (e.Row.Cells[0].Controls[2] as LinkButton).Attributes["onclick"] = "return confirm('Do you want to delete this row?');";
            }
        }
        //contactMonth == currentMonth && contactDay >= currentDay && contactDay < currentDay + 7

        private void BindGrid()
        {
            string constr = ConfigurationManager.ConnectionStrings["yuceltandbConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT ID, Name, Surname,Number,Email,Birthdate FROM ContactDB"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            GridView1.DataSource = dt;
                            GridView1.DataBind();
                        }
                    }
                }
            }
        }

       
        
        }
    }
