using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace POE_18012508
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string constr = WebConfigurationManager.ConnectionStrings["databaseconnection"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select count(*) from userregister where Username='" + txtUsername.Text + "' and Password='" + txtPassword.Text + "'", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                cmd.ExecuteNonQuery();
                if (dt.Rows[0][0].ToString() == "1")
                {
                    Response.Write("<script>alert('user is logged in successfully')</script>");
                    Response.Redirect("~/Modules.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Error in Login')</script>");
                }
            }catch(Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}