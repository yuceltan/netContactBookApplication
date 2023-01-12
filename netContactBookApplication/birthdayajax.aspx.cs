using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace netContactBookApplication
{
    public partial class birthdayajax : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblTime.Text = "Last Refreshed: " + DateTime.Now.ToString();
        }

        protected void TimerTick(object sender, EventArgs e)
        {
            lblTime.Text = "Last Refreshed: " + DateTime.Now.ToString();
            GridView1.DataBind();
        }
    }
}