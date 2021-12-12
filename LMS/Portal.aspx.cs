using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace LMS
{
    public partial class Portal : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            pusername.Focus();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection sql = new SqlConnection(cs);
            sql.Open();

            string qry = "select* from login where username = @name and password = @pass";
            SqlCommand cmd = new SqlCommand(qry,sql);
            cmd.Parameters.AddWithValue("@name",pusername.Text);
            cmd.Parameters.AddWithValue("@pass",Ppassword.Text);
            
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows==true)
            {

                Response.Write(Session["username"]==pusername.Text);
                Response.Redirect("index.aspx");

            }
            else
            {
                Response.Write("<Script>alert('Failed')</script>");
            }



            sql.Close();


        }
    }
}