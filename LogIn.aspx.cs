using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LogIn : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        String con = "Server=.;Database=OnlineNoteBook; Integrated Security=true";
        SqlConnection connection = new SqlConnection(con);
        String myquery = "select * from Registration";
        SqlCommand cmd = new SqlCommand(myquery, connection);
        SqlDataReader Dr;
        connection.Open();
        Dr = cmd.ExecuteReader();

        while (Dr.Read())
        {
            string email = Dr["Email"].ToString();
            string pass = Dr["Password"].ToString();
            if (email == TextBoxEmail.Text && pass == TextBoxPassword.Text)
            {
                Session["email"] = email;
                Response.Write("Login successfully");
                Response.Redirect("Home.aspx");

            }
            else
            {
                Label1.Text = "Invalid Username or Password";
            }
        }
        Dr.Close();
    }
}