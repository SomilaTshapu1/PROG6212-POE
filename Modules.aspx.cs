using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace POE_18012508
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnCalculateSelfStudy_Click(object sender, EventArgs e)
        {
            int credits, semesterweeks, weeklyhours, selftudy_weeklyhours;

            credits = int.Parse(txtCredits.Text);
            weeklyhours = int.Parse(txtClassWeeklyHours.Text);
            semesterweeks = int.Parse(txtClassWeeks.Text);


            selftudy_weeklyhours = credits * 10 / semesterweeks - weeklyhours;

            txtSelfStudyHours.Text = selftudy_weeklyhours.ToString();



        }

        protected void btnRemainingHours_Click(object sender, EventArgs e)
        {
            int selftudy_weeklyhours, hoursSpent, RemainingHours;
            selftudy_weeklyhours = int.Parse(txtSelfStudyHours.Text);
            hoursSpent = int.Parse(txtHoursSpent.Text);

            RemainingHours = selftudy_weeklyhours - hoursSpent;
            txtRemainingHours.Text = RemainingHours.ToString();
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-KJ8OUPSQ;Initial Catalog=mymodules;Integrated Security=True");
            SqlCommand cmd = new SqlCommand(@"INSERT INTO [dbo].[Module]
           ([Code]
           ,[Name]
           ,[Credits]
           ,[WeeklyHours]
           ,[SemesterWeeks]
           ,[StarDate]
           ,[SelfStudy]
           ,[HoursSpent]
           ,[RecordedDate]
           ,[Remaining])
     VALUES
            ('" + txtModuleCode.Text + "', '" + txtModuleName.Text + "', '" + txtCredits.Text + "', '" + txtClassWeeklyHours.Text + "', '" + txtClassWeeks.Text + "', '" + calendarStartDate.SelectedDate + "', '" + txtSelfStudyHours.Text + "', '" + txtHoursSpent.Text + "','" +calRecordedDate.SelectedDate + "', '" + txtRemainingHours.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("Data Insertd Successfully");
           con.Close();

        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-KJ8OUPSQ;Initial Catalog=mymodules;Integrated Security=True");
            SqlCommand cmd = new SqlCommand(@"DELETE FROM [dbo].[Module]
      WHERE [Code]='" + txtModuleCode.Text + "'", con);
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("Data Deleted Successfully");
            con.Close();

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-KJ8OUPSQ;Initial Catalog=mymodules;Integrated Security=True");
            SqlCommand cmd = new SqlCommand(@"UPDATE [dbo].[Module]
   SET[Code] = '" + txtModuleCode.Text + "',[Name] = '" + txtModuleName.Text + "' ,[Credits] ='" + txtCredits.Text + "',[WeeklyHours] = '" + txtClassWeeklyHours.Text + "',[SemesterWeeks] = '" + txtClassWeeks.Text + "',[StarDate] = '" + calendarStartDate.SelectedDate + "',[SelfStudy] = '" + txtSelfStudyHours.Text + "',[HoursSpent] = '" + txtHoursSpent.Text + "' ,[RecordedDate] = '" + calRecordedDate.SelectedDate + "',[Remaining] = '" + txtRemainingHours.Text + "' WHERE [Code] ='" + txtModuleCode.Text + "' ", con);
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("Data Updated Successfully");
            con.Close();
        }
       

        protected void btnViewdata_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-KJ8OUPSQ;Initial Catalog=mymodules;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Select * from Module", con);
            con.Open();
            SqlDataReader sdr = cmd.ExecuteReader();
            GridView1.DataSource = sdr;
            GridView1.DataBind();
            con.Close();
        }

        protected void btnGraphs_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Graphs.aspx");
        }
    }
}