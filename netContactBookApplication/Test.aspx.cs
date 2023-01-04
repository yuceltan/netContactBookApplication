using netContactBookApplication.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace netContactBookApplication
{
    public partial class Test : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-O9VG8LB\SQLEXPRESS;Initial Catalog=yuceltandb;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework");


         
             con.Open();
           
            SqlCommand cmd = new SqlCommand("SELECT * FROM ContactRecords",con);
            SqlDataReader rdr = cmd.ExecuteReader();
            GridView1.DataSource = rdr;
            GridView1.DataBind();
            con.Close();

        }

       

    }
}