using System;
using System.Data;

namespace Practical5
{
    public partial class AcademicLeave : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("WebForm1.aspx");
            }
            if (!IsPostBack)
            {
                lblUser.Text = "Logged in as: " + Session["username"].ToString();
                CreateLeaveTable();
            }
            DisplayLeaves();
        }

        private void CreateLeaveTable()
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("Date");
            dt.Columns.Add("Leave Type");
            dt.Columns.Add("Days");
            dt.Columns.Add("Attendance");
            dt.Columns.Add("Reason");
            Session["Leaves"] = dt;
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            lblSelectedDate.Text = "Selected Date: " + Calendar1.SelectedDate.ToString("dd-MM-yyyy");
        }

        protected void btnApply_Click(object sender, EventArgs e)
        {
            if (ddlLeaveType.SelectedValue == "")
            {
                lblMessage.Text = "Please select leave type.";
                return;
            }
            if (Calendar1.SelectedDate == DateTime.MinValue)
            {
                lblMessage.Text = "Please select a date.";
                return;
            }
            if (txtDays.Text == "")
            {
                lblMessage.Text = "Please enter number of days.";
                return;
            }
            if (rblType.SelectedValue == "")
            {
                lblMessage.Text = "Please select attendance type.";
                return;
            }
            DataTable dt = (DataTable)Session["Leaves"];
            DataRow row = dt.NewRow();
            row["Date"] = Calendar1.SelectedDate.ToString("dd-MM-yyyy");
            row["Leave Type"] = ddlLeaveType.SelectedValue;
            row["Days"] = txtDays.Text;
            row["Attendance"] = rblType.SelectedValue;
            row["Reason"] = txtReason.Text;
            dt.Rows.Add(row);
            Session["Leaves"] = dt;
            lblMessage.Text = "Leave applied successfully.";
            DisplayLeaves();

            txtDays.Text = "";
            txtReason.Text = "";
            ddlLeaveType.SelectedIndex = 0;
            rblType.ClearSelection();
        }

        private void DisplayLeaves()
        {
            if (Session["Leaves"] != null)
            {
                DataTable dt = (DataTable)Session["Leaves"];
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("Welcome.aspx");
        }
    }
}
