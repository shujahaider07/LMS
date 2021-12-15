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
        string userType;

        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            pusername.Focus();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection sql = new SqlConnection(cs);
            sql.Open();

            string qry = "select * from login where username = @name and password = @pass";
            SqlCommand cmd = new SqlCommand(qry, sql);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.AddWithValue("@name", pusername.Text);
            cmd.Parameters.AddWithValue("@pass", Ppassword.Text);
            DataTable dt = new DataTable();
            da.Fill(dt);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows == true)
            {
                if (DropDownList1.SelectedIndex == 0)
                {
                    userType = dt.Rows[0][3].ToString().Trim();
                    if (userType == "a")
                    {
                        Response.Write(Session["username"] = dt.Rows[0][3].ToString());

                        Session["username"] = pusername.Text;
                        Response.Redirect("AdminDashboard.aspx");

                    }
                    else
                    {
                        Response.Write("<Script>alert('INCORRECT PRIVILEGES')</script>");

                    }
                }

                if (DropDownList1.SelectedIndex == 1)
                {



                    userType = dt.Rows[0][3].ToString().Trim();

                    {
                        if (userType == "u")
                        {
                            Response.Write(Session["username"] = dt.Rows[0][3].ToString());


                            Session["username"] = pusername.Text;
                            Response.Redirect("index.aspx");

                        }
                        else
                        {
                            Response.Write("<Script>alert('INCORRECT PRIVILEGES')</script>");
                        }

                    }
                    

                    sql.Close();

                }
             

            }
        }





    }



}

