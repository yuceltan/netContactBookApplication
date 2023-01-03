using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.Mime.MediaTypeNames;

namespace netContactBookApplication
{
    public partial class AllContacts : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {



        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
                

        }
        protected void AddNewContact_Click(object sender, EventArgs e)
        {
            Response.Redirect("Index.cshtml");
        }
        

        protected void Button3_Click(object sender, EventArgs e)
        {

        }

        
        }
    }
