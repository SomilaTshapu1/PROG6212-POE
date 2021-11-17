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
    public partial class WebForm1 : System.Web.UI.Page
    {
        string gender;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-KJ8OUPSQ;Initial Catalog=Poe_Registration;Integrated Security=True");
            SqlCommand cmd = new SqlCommand(@"INSERT INTO[dbo].[userregister]
           ([Fullname]
           ,[Address]
           ,[Gender]
           ,[Phone]
           ,[Email]
           ,[Username]
           ,[Password])
            VALUES
           ('" + txtFullname.Text + "', '" + txtAddress.Text + "', '" + gender + "', '" + txtPhone.Text + "', '" + txtEmail.Text + "', '" + txtUsername.Text + "', '" + txtPassword.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('user is registered successfully')</script>");
            Response.Redirect("~/Modules.aspx");

        }

        protected void rbMale_CheckedChanged(object sender, EventArgs e)
        {
            gender = "Male";
        }

        protected void rbFemale_CheckedChanged(object sender, EventArgs e)
        {
            gender = "Female";
        }

        protected void rbOther_CheckedChanged(object sender, EventArgs e)
        {
            gender = "Other";
        }

        protected void linkLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login.aspx");
        }
    }
}