using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EditInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["username"] == null)
            {
                Image();
            EditFieldValueSet();
            }
            
        }
    }
    void EditFieldValueSet()
    {
        String con = "Server=.;Database=OnlineNoteBook; Integrated Security=true";
        SqlConnection connection = new SqlConnection(con);

        String myquery = "select * from Registration where Email='" + Session["email"].ToString() + "'";
        SqlCommand cmd = new SqlCommand(myquery, connection);
        SqlDataReader Dr;
        connection.Open();
        Dr = cmd.ExecuteReader();

        while (Dr.Read())
        {
            TextBoxName.Text = Dr["Name"].ToString();
            TextBoxPhone.Text = Dr["Phone"].ToString();
            TextBoxAddress.Text = Dr["Address"].ToString();
            LabelEmail.Text = Dr["Email"].ToString();
        }
        connection.Close();
    }
    void Image()
    {

        String con = "Server=.;Database=OnlineNoteBook; Integrated Security=true";
        SqlConnection connection = new SqlConnection(con);

        String myquery = "select * from Registration where Email='" + Session["email"].ToString() + "'";
        SqlCommand cmd = new SqlCommand(myquery, connection);
        SqlDataReader Dr;
        connection.Open();
        Dr = cmd.ExecuteReader();
        GridView1.DataSource = Dr;
        GridView1.DataBind();
        connection.Close();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        String con = "Server=.;Database=OnlineNoteBook; Integrated Security=true";
        SqlConnection connection = new SqlConnection(con);
        if (FileUploadImage.HasFile)
        {
            FileUploadImage.SaveAs(Server.MapPath("~/RegImage/") + Path.GetFileName(FileUploadImage.FileName));
            string link = "~/RegImage/" + Path.GetFileName(FileUploadImage.FileName);
            connection.Open();
            //updating the record  
            SqlCommand cmd = new SqlCommand("Update Registration set Name='" + TextBoxName.Text + "', Phone='" + TextBoxPhone.Text + "',Address='" + TextBoxAddress.Text + "', Image='" + link + "' where Email='" + Session["email"].ToString() + "'", connection);
            cmd.ExecuteNonQuery();
            connection.Close();
        }
        else
        {
            connection.Open();
            //updating the record  
            SqlCommand cmd = new SqlCommand("Update Registration set Name='" + TextBoxName.Text + "', Phone='" + TextBoxPhone.Text + "',Address='" + TextBoxAddress.Text + "' where Email='" + Session["email"].ToString() + "'", connection);
            cmd.ExecuteNonQuery();
            connection.Close();
        }
    }
}