using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ImageGallery : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ShowData();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        String con = "Server=.;Database=OnlineNoteBook; Integrated Security=true";
        SqlConnection connection = new SqlConnection(con);
        if (FileUploadImage.HasFile)
        {
            FileUploadImage.SaveAs(Server.MapPath("~/Gallery/") + Path.GetFileName(FileUploadImage.FileName));
            string link = "~/Gallery/" + Path.GetFileName(FileUploadImage.FileName);

            connection.Open();
            string _queryString;
            _queryString = "Insert into ImagGallery(Date,Location,ShortDerscription,Image,UserEmail) values('" + DateTime.UtcNow.Date.ToString("yyyy-M-d") + "','" + TextBoxLocation.Text + "','" + TextBoxShortDescription.Text + "', '" + link + "','" + Session["email"].ToString() + "');";
            SqlCommand cmd = new SqlCommand(_queryString, connection);
            cmd.ExecuteNonQuery();
            Response.Redirect("ImageGallery.aspx");
            Label5.Text = "Save successfully";
        }
        else
        {
            Label4.Text = "Image is required";
        }
    }
    void ShowData()
    {
        String con = "Server=.;Database=OnlineNoteBook; Integrated Security=true";
        SqlConnection connection = new SqlConnection(con);
        connection.Open();
        SqlCommand comand = new SqlCommand("Select * from ImagGallery where UserEmail='"+Session["email"].ToString()+"'", connection);
        SqlDataReader reading = comand.ExecuteReader();
        GridView1.DataSource = reading;
        GridView1.DataBind();
        connection.Close();
    }

    protected void LinkButtonDelete_Command(object sender, CommandEventArgs e)
    {
        File.Delete(MapPath (e.CommandArgument.ToString()));
        Response.Write("File delete successfully");
        ShowData();
    }

    protected void ButtonSearch_Click(object sender, EventArgs e)
    {
        String con = "Server=.;Database=OnlineNoteBook; Integrated Security=true";
        SqlConnection connection = new SqlConnection(con);
        connection.Open();
        SqlCommand comand = new SqlCommand("Select * from ImagGallery where Date='" + TextBoxSearch.Text + "' or Location='" + TextBoxSearch.Text + "' and UserEmail='" + Session["email"].ToString() + "' order by Date desc", connection);
        SqlDataReader reading = comand.ExecuteReader();
        GridView1.DataSource = reading;
        GridView1.DataBind();
        connection.Close();
    }
}