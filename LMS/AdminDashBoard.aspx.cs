using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LMS
{
    public partial class AdminDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Userid"] == null)
            {
                Response.Redirect("Portal.aspx");

            }
             
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["Userid"] = null;

            Response.Redirect("Portal.aspx");

        }
    }
    }
