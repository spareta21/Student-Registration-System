using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Details : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string name = "", contact = "", addr = "", cls = "", email = "", age = "", gndr = "";
        int id = Convert.ToInt32(Request.QueryString["ID"]);
        SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=projectdb;Integrated Security=True");
        string query = "select * from registration where ID=" + id;
        con.Open();
        SqlCommand cmd = new SqlCommand(query, con);
        using (SqlDataReader rdr = cmd.ExecuteReader())
        {

            while (rdr.Read())
            {
                name = rdr["Name"].ToString();
                contact = rdr["Contact"].ToString();
                addr = rdr["Address"].ToString();
                cls = rdr["Class"].ToString();
                email = rdr["Email"].ToString();
                age = rdr["Age"].ToString();
                gndr = rdr["Gender"].ToString();
            }
            TextBox2.Text = name;
            TextBox3.Text = contact;
            TextBox4.Text = addr;
            TextBox5.Text = cls;
            TextBox6.Text = email;
            TextBox7.Text = age;
            TextBox8.Text = gndr;


        }
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string name = TextBox2.Text;
            string contact = TextBox3.Text;
            string addr = TextBox4.Text;
            string cls = TextBox5.Text;
            string email = TextBox6.Text;
            string age = TextBox7.Text;
            string gndr = TextBox8.Text;
            int id = Convert.ToInt32(Request.QueryString["ID"]);
            //Response.Write(TextBox2.Text + id);
            SqlConnection con1 = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=projectdb;Integrated Security=True");
            string query1 = "UPDATE registration SET Name = '" + name + "',Contact='" + contact + "',Address='" + addr + "',Class='" + cls + "',Email='" + email + "',Age='" + age + "',Gender='" + gndr + "' WHERE ID = " + id;
            con1.Open();
            SqlCommand cmd1 = new SqlCommand(query1, con1);
            int r = cmd1.ExecuteNonQuery();
            if (r > 0)
                Response.Write("<script>alert('Updated Successfully')</script>");
            else
                Response.Write("<script>alert('Something went wrong!!')</script>");


            con1.Close();

            /*TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";*/
        }
        catch (SqlException b)
        {
            Response.Write(b.Message);
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            int id = Convert.ToInt32(Request.QueryString["ID"]);
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=projectdb;Integrated Security=True");
            string query = "delete from registration where ID=" + id;
            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);
            int r = cmd.ExecuteNonQuery();
            if (r > 0)
            {
                Response.Write("Deleted Successfully");
                Response.Redirect("View_Details.aspx");
            }
            else
                Response.Write("Not Updated");
            con.Close();
        }
        catch (SqlException b)
        {
            Response.Write(b.Message);
        }
    }
}