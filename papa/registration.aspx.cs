using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Security.Cryptography;

namespace papa
{
    public partial class registration : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\CL1 PC21\Documents\Visual Studio 2013\Projects\papa\papa\App_Data\Database1.mdf;Integrated Security=True;Connect Timeout=30");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = " insert into Tbl_reg(lastname,firstname,middlename,studentNum) values ('" + txt_firstname.Text + "','" + txt_lastname.Text + "','" + txt_middlename.Text + "','" + txt_studentnum.Text + "')";
            cmd.ExecuteNonQuery();


            SqlCommand cmd1 = con.CreateCommand();
            cmd1.CommandType = CommandType.Text;
            cmd1.CommandText = " insert into Tbl_login(username,password,studentnum) values ('" + txt_username.Text + "','" +EncodePasswordToBase64( txt_password.Text) + "','" + txt_studentnum.Text + "')";
            cmd1.ExecuteNonQuery();

            txt_firstname.Text = "";
            txt_lastname.Text = "";
            txt_middlename.Text = "";
            txt_studentnum.Text = "";


        }


        public static string EncodePasswordToBase64(string password)
        {
            byte[] encData_byte = new byte[password.Length];
            encData_byte = System.Text.Encoding.UTF8.GetBytes(password);
            string encodedData = Convert.ToBase64String(encData_byte);
            return encodedData;
        }

    }
}