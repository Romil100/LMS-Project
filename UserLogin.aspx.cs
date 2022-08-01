using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Library.Member.assets
{
    public partial class UserLogin : System.Web.UI.Page
    {
        Database.Database con = new Database.Database();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Connection();
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            int i = 0;
            string isadmin = string.Empty;
            SqlCommand cmd = con.con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            //cmd.CommandText = "Select * From Admin_Reg Where Username = '" + uname.Text + "' AND Password='" + upass.Text + "' AND Status = 'Yes' OR Email = '" + uname.Text + "' AND Password='" + upass.Text + "' AND Status = 'Yes'";

            cmd.CommandText = "SELECT * FROM  tbluser WHERE UserName = '" + uname.Text + "' AND Password = '" + upass.Text + "'";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            sda.Fill(dt);
            i = Convert.ToInt32(dt.Rows.Count.ToString());
            if (dt.Rows.Count > 0)
            {
                 isadmin = dt.Rows[0]["Login_Type"].ToString();
                //isadmin = "1";
            }
            if (i > 0)
            {
               
                if (isadmin =="0")
                {
                    Session["Member"] = uname.Text;
                    Response.Redirect("/Member/MemberPanel.aspx");
                }
                else if(isadmin == "1")
                {
                    Session["Admin"] = uname.Text;
                    Response.Redirect("/Admin/AdminPanel.aspx");
                }
                else if (isadmin == "2")
                {
                    Session["Teacher"] = uname.Text;
                    Response.Redirect("/Teacher/Teacher/TeacherPanel.aspx");
                }
            }
            else
            {
                error.Style.Add("display", "block");
            }
        }
    }
}