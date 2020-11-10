using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication1
{
    public partial class NewWebform : System.Web.UI.Page
    {
        SqlConnection con=null;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        void mycon()
        {
            con = new SqlConnection(
                 "Data Source= DESKTOP-F8EUADA\\KenilModi;Initial Catalog=harsh;User ID=sa;Password=kenil@123");
            con.Open();
           
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            mycon();
            cmd = new SqlCommand("Insert into registration values(@fn,@em,@ps,@add,@city,@rdt)", con);
            cmd.Parameters.AddWithValue("@fn", TextBox1.Text);
            cmd.Parameters.AddWithValue("@em", TextBox2.Text);
            cmd.Parameters.AddWithValue("@ps", TextBox3.Text);
            cmd.Parameters.AddWithValue("@add", TextBox4.Text);
            cmd.Parameters.AddWithValue("@city", DropDownList1.Text);
            cmd.Parameters.AddWithValue("@rdt", System.DateTime.Now.ToString());
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Registration Successfully')</script>");
            con.Close();

            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
           

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            mycon();

            cmd = new SqlCommand("select * from registration", con);

            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            mycon();
            //cmd = new MySqlCommand("select * from registration where fullname=@fn", con);
            //cmd.Parameters.AddWithValue("@fn",txtsearchbox.Text);

            cmd = new SqlCommand("select * from registration where fullname like @fn", con);
            cmd.Parameters.AddWithValue("@fn", "%" + txtsearchbox.Text + "%");
            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            mycon();
            cmd = new SqlCommand("delete from registration where regid=@rid", con);
            cmd.Parameters.AddWithValue("@rid", txtsearchbox.Text);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Data Delete Successfully')</script>");
            con.Close();
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}