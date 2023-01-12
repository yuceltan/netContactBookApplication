using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Text.RegularExpressions;

namespace netContactBookApplication
{
    public partial class searchadv : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-O9VG8LB\SQLEXPRESS;Initial Catalog=yuceltandb;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                this.BindGrid();
            }

        }

        protected void Search(object sender, EventArgs e)
        {
            this.BindGrid();
        }

        private void BindGrid()
        {
            string constr = ConfigurationManager.ConnectionStrings["yuceltandbConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand())
                {





                     cmd.CommandText = "SELECT * FROM ContactDB WHERE @Name IN(Name,Surname,Email) OR TRY_CONVERT(int,@Number) IN(Number) OR  TRY_CAST(@BirthDate as date) IN(BirthDate); ";

                     cmd.Connection = con;
                     cmd.Parameters.AddWithValue("@Name", txtSearch.Text.Trim());
                     cmd.Parameters.AddWithValue("@Surname", txtSearch.Text.Trim());
                     cmd.Parameters.AddWithValue("@Email", txtSearch.Text.Trim());
                     cmd.Parameters.AddWithValue("@Number",txtSearch.Text.Trim());
                     cmd.Parameters.AddWithValue("@BirthDate", txtSearch.Text.Trim());



                    DataTable dt = new DataTable();
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        sda.Fill(dt);
                        gridview1.DataSource = dt;
                        gridview1.DataBind();
                    }
                }
            }
        }

        protected void OnPageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gridview1.PageIndex = e.NewPageIndex;
            this.BindGrid();
        }

        protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                e.Row.Cells[0].Text = Regex.Replace(e.Row.Cells[0].Text, txtSearch.Text.Trim(), delegate (Match match)
                {
                    return string.Format("<span style = 'background-color:#D9EDF7'>{0}</span>", match.Value);
                }, RegexOptions.IgnoreCase);
            }
        }

        protected void txtSearch_TextChanged(object sender, EventArgs e)
        {

        }
    }
}