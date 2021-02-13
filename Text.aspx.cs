using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Text : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void ButtonSave_Click(object sender, EventArgs e)
    {
        String con = "Server=.;Database=OnlineNoteBook; Integrated Security=true";
        SqlConnection connection = new SqlConnection(con);
        connection.Open();
        string _queryString;
        _queryString = "Insert into TextBook(Date,Tittle,Text,UserEmail) values('" + DateTime.UtcNow.Date.ToString("yyyy-M-d") + "','" + TextBoxTittle.Text + "','" + TextBoxText.Text + "', '" + Session["email"].ToString() + "');";
        SqlCommand cmd = new SqlCommand(_queryString, connection);
        cmd.ExecuteNonQuery();
        Response.Redirect("Text.aspx");
        Response.Write("Save successfully");
    }
}