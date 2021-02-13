using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

        }
    }

    protected void ButtonSubmit_Click(object sender, EventArgs e)
    {
        String con = "Server=.;Database=OnlineNoteBook; Integrated Security=true";
        SqlConnection connection = new SqlConnection(con);
        if (FileUploadImage.HasFile)
        {
            FileUploadImage.SaveAs(Server.MapPath("~/RegImage/") + Path.GetFileName(FileUploadImage.FileName));
            string link = "~/RegImage/" + Path.GetFileName(FileUploadImage.FileName);

            connection.Open();
            string _queryString;
            _queryString = "Insert into Registration(Name, Email,Phone,Address,Image,Password,RegistrationDate) values('" + TextBoxName.Text + "','" + TextBoxEmail.Text + "', '" + TextBoxPhone.Text + "', '" + TextBoxAddress.Text + "', '" + link + "', '" + TextBoxCPassword.Text + "','" + DateTime.UtcNow.Date.ToString("yyyy-M-d") + "');";
            SqlCommand cmd = new SqlCommand(_queryString, connection);
            cmd.ExecuteNonQuery();
            Response.Write("Registation Successful");
            string email= TextBoxEmail.Text.ToString();
            Response.Redirect("Home.aspx");
        }
        else
        {
            Label1.Text = "Image is required";
            Label1.ForeColor = System.Drawing.Color.Red;
        }
    }

}