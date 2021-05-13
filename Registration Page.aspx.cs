using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Registration_Page : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=projectdb;Integrated Security=True");
        string name = TextBox1.Text;
        string nos = TextBox2.Text;
        string address = TextBox3.Text;
        string standard = DropDownList2.Text;
        string email = TextBox4.Text;
        string age = TextBox5.Text;
        string gender = DropDownList1.Text;
        if (standard.Equals("Choose") || gender.Equals("Choose"))
        {
            Response.Write("<script>alert('Select a Standard/Gender to proceed')</script>");
        }
        else
        {
            con.Open();
            string query = "insert into registration (Name,Contact,Address,Class,Email,Age,Gender) values ('" + name + "','" + nos + "','" + address + "','" + standard + "','" + email + "','" + age + "','" + gender + "')";
            SqlCommand cmd = new SqlCommand(query, con);
            int r = cmd.ExecuteNonQuery();
            if (r > 0)
                Response.Write("<script>alert('Registered Successfully')</script>");
            else
                Response.Write("<script>alert('Something went wrong')</script>");
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            DropDownList1.SelectedIndex = 0;
            DropDownList2.SelectedIndex = 0;
        }
    }
}