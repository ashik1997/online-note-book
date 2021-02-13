using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ShowData();
    }

    protected void ButtonSave_Click(object sender, EventArgs e)
    {
        String con = "Server=.;Database=OnlineNoteBook; Integrated Security=true";
        SqlConnection connection = new SqlConnection(con);

            FileUploadImage.SaveAs(Server.MapPath("~/Image/") + Path.GetFileName(FileUploadImage.FileName));
            string link = "~/Image/" + Path.GetFileName(FileUploadImage.FileName);

            connection.Open();
            string _queryString;
            _queryString = "Insert into Contact(Name,PhoneNo,Email,Image,UserEmail) values('" + TextBoxName.Text + "','" + TextBoxPhone.Text + "','" + TextBoxEmail.Text + "', '" + link + "','" + Session["email"].ToString() + "');";
            SqlCommand cmd = new SqlCommand(_queryString, connection);
            cmd.ExecuteNonQuery();
            Response.Redirect("Contact.aspx");
        Label4.Text = "Save successfully";
    }
    void ShowData()
    {
        String con = "Server=.;Database=OnlineNoteBook; Integrated Security=true";
        SqlConnection connection = new SqlConnection(con);
        connection.Open();
        SqlCommand comand = new SqlCommand("Select * from Contact where UserEmail='" + Session["email"].ToString() + "'", connection);
        SqlDataReader reading = comand.ExecuteReader();
        GridView1.DataSource = reading;
        GridView1.DataBind();
        connection.Close();
    }

    protected void ButtonSearch_Click(object sender, EventArgs e)
    {
        String con = "Server=.;Database=OnlineNoteBook; Integrated Security=true";
        SqlConnection connection = new SqlConnection(con);
        connection.Open();
        SqlCommand comand = new SqlCommand("Select * from Contact where Name='" + TextBoxSearch.Text + "' or Phone='" + TextBoxSearch.Text + "'and UserEmail='" + Session["email"].ToString() + "' order by Date desc", connection);
        SqlDataReader reading = comand.ExecuteReader();
        GridView1.DataSource = reading;
        GridView1.DataBind();
        connection.Close();
    }
}