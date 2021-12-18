using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace LMS
{
    public partial class BiologyUpload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (FileUpload1.HasFiles)
            {
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/BiologyUpload/") + FileUpload1.FileName);
                

            }


            DataTable dt = new DataTable();
            dt.Columns.Add("File", typeof(string));
            dt.Columns.Add("Size", typeof(string));
            dt.Columns.Add("type", typeof(string));
            dt.Columns.Add("Date", typeof(string));

            foreach (string strFile in Directory.GetFiles(Server.MapPath("~/BiologyUpload/")))
            {
                FileInfo fi = new FileInfo(strFile);
                dt.Rows.Add(fi.Name, fi.Length, fi.Extension, fi.LastAccessTime);

            }
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Download")
            {
                Response.Clear();
                Response.ContentType = "application/octent-stream";
                Response.AppendHeader("content-disposition", "filename=" + e.CommandArgument);
                Response.TransmitFile(Server.MapPath("~/BiologyUpload/") + e.CommandArgument);
                Response.End();
            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
           
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            

        }

        //protected void LinkButton2_Command(object sender, CommandEventArgs e)
        //{
        //    File.Delete(MapPath(e.CommandArgument.ToString()));
        //    Response.Write("File delete Sucessfully");

        //}
    }
}