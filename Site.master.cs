using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class site : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["email"] != null)
        {
            LabelEmail.Text = Session["email"].ToString();
            HyperLinkLogin.Visible = false;
            HyperLinkRegistration.Visible = false;
            HyperLinkNote.Visible = true;
            HyperLinkNoteList.Visible = true;
            HyperLinkGallery.Visible = true;
            HyperLinkContat.Visible = true;
            LinkButtonLogout.Visible = true;
            LinkButtonEdit.Visible = true;
        }
        else
        {
            HyperLinkLogin.Visible = true;
            HyperLinkRegistration.Visible = true;
            HyperLinkNote.Visible = false;
            HyperLinkNoteList.Visible = false;
            HyperLinkContat.Visible = false;
            HyperLinkGallery.Visible = false;
            LinkButtonLogout.Visible = false;
            LinkButtonEdit.Visible = false;


        }
        if (!IsPostBack)
        {
            NewMethod();
        }
    }

    protected void Timer1_Tick(object sender, EventArgs e)
    {
        NewMethod();
    }
    private void NewMethod()
    {
        Random rn = new Random();
        int i = rn.Next(1, 4);
        Image1.ImageUrl = "~/SliderImage/" + i.ToString() + ".jpg";
    }

    protected void LinkButtonEdit_Click(object sender, EventArgs e)
    {
        Response.Redirect("EditInfo.aspx");
    }

    protected void LinkButtonLogout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Home.aspx");
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("EditInfo.aspx");
    }
}
