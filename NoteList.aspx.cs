using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class NoteList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ShowData();
    }

    protected void ButtonSearch_Click(object sender, EventArgs e)
    {
        String con = "Server=.;Database=OnlineNoteBook; Integrated Security=true";
        SqlConnection connection = new SqlConnection(con);
        connection.Open();
        SqlCommand comand = new SqlCommand("Select * from TextBook where Date='" + TextBoxSearch.Text + "' or Tittle='" + TextBoxSearch.Text + "' and UserEmail='"+ Session["email"].ToString()+"' order by Date desc", connection);
        SqlDataReader reading = comand.ExecuteReader();
        GridView1.DataSource = reading;
        GridView1.DataBind();
        connection.Close();
    }
    void ShowData()
    {
        String con = "Server=.;Database=OnlineNoteBook; Integrated Security=true";
        SqlConnection connection = new SqlConnection(con);
        connection.Open();
        SqlCommand comand = new SqlCommand("Select * from TextBook where UserEmail='" + Session["email"].ToString() + "' order by Date desc", connection);
        SqlDataReader reading = comand.ExecuteReader();
        GridView1.DataSource = reading;
        GridView1.DataBind();
        connection.Close();
    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        ShowData();
    }

    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        ShowData();
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        ShowData();
    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int index = e.RowIndex;
        GridViewRow row = (GridViewRow)GridView1.Rows[index];
        //Finding the controls from Gridview for the row which is going to update  
        Label date = (Label)row.FindControl("LabelDate");
        TextBox tittle = (TextBox)row.FindControl("TextBoxTittle");
        TextBox text = (TextBox)row.FindControl("TextBoxText");



        String con = "Server=.;Database=OnlineNoteBook; Integrated Security=true";
        SqlConnection connection = new SqlConnection(con);
        connection.Open();
        //updating the record  
        SqlCommand cmd = new SqlCommand("Update TextBook set Tittle='" + tittle.Text + "', Text='" + text.Text + "' where UserEmail='" + Session["email"].ToString() + "'", connection);
        cmd.ExecuteNonQuery();
        connection.Close();
        //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
        GridView1.EditIndex = -1;
        //Call ShowData method for displaying updated data  
        ShowData();

    }
}