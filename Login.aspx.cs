using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string admin_email = "spareta21@gmail.com", admin_pass = "1234";

        if (TextBox1.Text == admin_email && TextBox2.Text == admin_pass)
        {
            //Response.Write("<script>alert('Admin Login Successfully')</script>");
            Session["Name"] = "Shraddha Pareta";
            Response.Redirect("Home.aspx");
        }
        else
        {
            Response.Write("<script>alert('Invalid Email/Password')</script>");
        }
    }
}