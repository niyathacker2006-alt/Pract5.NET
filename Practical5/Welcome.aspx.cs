using System;
using System.Web;

namespace Practical5
{
    public partial class Welcome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("WebForm1.aspx");
            }
            if (!IsPostBack)
            {
                lblWelcome.Text = "Welcome, " + Session["username"].ToString();
            }
        }

        protected void btnAcademic_Click(object sender, EventArgs e)
        {
            Response.Redirect("AcademicLeave.aspx");
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            if (Request.Cookies["username"] != null)
            {
                HttpCookie cookie = new HttpCookie("username");
                cookie.Expires = DateTime.Now.AddDays(-1);
                Response.Cookies.Add(cookie);
            }
            Response.Redirect("WebForm1.aspx");
        }
    }
}
