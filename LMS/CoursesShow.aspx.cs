using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace LMS
{
    public partial class CoursesShow : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Data/") + FileUpload1.FileName);

            }

            SqlConnection sql = new SqlConnection(cs);
            sql.Open();
            DataTable dt = new DataTable();
            dt.Columns.Add("File", typeof(string));
            dt.Columns.Add("Size", typeof(string));
            dt.Columns.Add("type", typeof(string));
            dt.Columns.Add("Date", typeof(string));


            foreach (string strFile in Directory.GetFiles(Server.MapPath("~/Data/")))
            {
               
                FileInfo fi = new FileInfo(strFile);
                dt.Rows.Add(fi.Name, fi.Length, fi.Extension, fi.LastAccessTime);

            }
            GridView1.DataSource = dt;
            GridView1.DataBind();


            sql.Close();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            if (e.CommandName == "Download")
            {
                Response.Clear();
                Response.ContentType = "application/octent-stream";
                Response.AppendHeader("content-disposition", "filename=" + e.CommandArgument);
                Response.TransmitFile(Server.MapPath("~/Data/") + e.CommandArgument);
                Response.End();
            }
        }
    }
}