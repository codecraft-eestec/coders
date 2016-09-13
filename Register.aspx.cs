using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class Register : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void User_CheckedChanged(object sender, EventArgs e)
        {
            Client.Checked = false;
            MultiView1.ActiveViewIndex = 0;
        }

        protected void Client_CheckedChanged(object sender, EventArgs e)
        {
            User.Checked = false;
            MultiView1.ActiveViewIndex = 1;
        }

        protected void MultiView1_ActiveViewChanged(object sender, EventArgs e)
        {

        }
    }
}