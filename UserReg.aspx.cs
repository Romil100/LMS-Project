using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Library.Member
{
    public partial class UserReg : System.Web.UI.Page
    {
        Database.Database con = new Database.Database();
        String mid = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Connection();

            
            SqlCommand cmd = con.con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Select * From IdPro Where Id = 1";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            sda.Fill(dt);

            foreach (DataRow dr in dt.Rows)
            {
                mid = dr["MText"].ToString() + dr["MCode"].ToString();
            }

        }

        protected void btnReg_Click1(object sender, EventArgs e)
        {
            SqlCommand cmd4 = con.con.CreateCommand();
            cmd4.CommandType = CommandType.Text;
            cmd4.CommandText = "Update IdPro SET MCode = MCode+1 Where Id = 1";
            

            String regDate = DateTime.Now.ToString("yyyy/MM/dd");
            String Img_Name = Class1.GetRandomPassword(15) + ".jpg";

            //Check Email address Already Exits or Not//
            int found = 0;
            SqlCommand cmd1 = con.con.CreateCommand();
            cmd1.CommandType = CommandType.Text;
            cmd1.CommandText = "Select * From tbluser Where Email = '" + email.Text+"'";
            cmd1.ExecuteNonQuery();
            DataTable dt1 = new DataTable();
            SqlDataAdapter sda1 = new SqlDataAdapter(cmd1);
            sda1.Fill(dt1);
            found = Convert.ToInt32(dt1.Rows.Count.ToString());
            if (found > 0)
            {
                lblemail.Text = "Email Already Used. Use Different Email";
            }
                //------------End---------------//
            else
            {
                //Contact number already Exits or Not//
                int found2 = 0;
                SqlCommand cmd2 = con.con.CreateCommand();
                cmd2.CommandType = CommandType.Text;
                cmd2.CommandText = "Select * from tbluser Where Contact='" + contact.Text+"'";
                cmd2.ExecuteNonQuery();
                DataTable dt2 = new DataTable();
                SqlDataAdapter sda2 = new SqlDataAdapter(cmd2);
                sda2.Fill(dt2);
                found2 = Convert.ToInt32(dt2.Rows.Count.ToString());

                if (found2 > 0)
                {
                    ercontact.Text = "Contact Number Already Used. Use Different Contact number";
                }
                    //-------------------End---------//
                else
                {
                                            //Insert Query to Database//
                        String path = "";
                        mImage.SaveAs(Request.PhysicalApplicationPath + "../../images" + Img_Name.ToString());
                        path = "Member_Images/" + Img_Name.ToString();

                        SqlCommand cmd = con.con.CreateCommand();
                        cmd.CommandType = CommandType.Text;
                        cmd.CommandText = "Insert Into tbluser Values('" + fname.Text + "','" + lname.Text + "','" + address.Text + "','" + email.Text + "','" + contact.Text + "', '" + mid.ToString() + "','" + pass.Text + "','" + path.ToString() + "','Yes','" + regDate.ToString() + ",0')";
                        
                        //Check password and Confirm passwords are match or Not//
                        if (pass.Text == cpass.Text)
                        {

                            cmd.ExecuteNonQuery();
                            cmd4.ExecuteNonQuery();
                            Response.Write("<script>alert('Member Registration Successfully. Get your Member Card From Librarian'); window.location.href=window.location.href;</script>");
                        }
                        else
                        {
                            erpass.Text = "Password Not Match";
                        }
                    
                }
            }          
        }

        
    }
}