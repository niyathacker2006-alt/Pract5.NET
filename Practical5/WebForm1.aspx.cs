using System;
using System.Web;

namespace Practical5
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack && Request.Cookies["username"] != null)
            {
                txtUsername.Text = Request.Cookies["username"].Value;
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string password = "1234";
            if (txtPassword.Text == password)
            {
                Session["username"] = txtUsername.Text;
                HttpCookie cookie = new HttpCookie("username");
                cookie.Value = txtUsername.Text;
                cookie.Expires = DateTime.Now.AddDays(7);
                Response.Cookies.Add(cookie);
                Response.Redirect("Welcome.aspx");
            }
            else
            {
                lblMessage.Text = "Invalid Username or Password";
            }
        }
    }
}
