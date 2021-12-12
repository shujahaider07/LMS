using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace LMS
{
    public partial class Registration : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            
            SqlConnection sql = new SqlConnection(cs);
            sql.Open();
            string qry = "select * from login where username = @name and password = @pass";
            SqlCommand cmd = new SqlCommand(qry, sql);
            cmd.Parameters.AddWithValue("@name", Lusertxt.Text);
            cmd.Parameters.AddWithValue("@pass", Lpasstxt.Text);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows == true)
            {
                Response.Write(Session["username"] == Lusertxt.Text);
                Response.Redirect("courses.html");
                
                sql.Close();
            }
            else
            {
                Response.Write("<script>alert('LOGIN FAILED !')</script>");
            }
        }
    }
}