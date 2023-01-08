using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using Araba_Satış_Sitesi_YouTube.Classes;
using System.Data;

namespace Araba_Satış_Sitesi_YouTube
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {

            SqlCommand commandLogin = new SqlCommand("Select * from TableUser where UserMail=@pmail and UserPassword=@ppass",SqlConnectionClass.connection);

            SqlConnectionClass.CheckConnection();

            string shaPass = Sha256Converter.ComputeSha256Hash(tboxPassword.Text);

            commandLogin.Parameters.AddWithValue("@pmail",tboxMail.Text);
            commandLogin.Parameters.AddWithValue("@ppass", shaPass);

            DataTable dt = new DataTable();

            SqlDataAdapter da = new SqlDataAdapter(commandLogin);

            da.Fill(dt);

            if (dt.Rows.Count>0)
            {
                if (tboxMail.Text=="emirgorkemozdemir@gmail.com")
                {
                    Session["IsUserAdmin"] = true;
                    Session["UserMail"] = "emirgorkemozdemir@gmail.com";
                    Response.Redirect("AdminDeneme.aspx");
                }
                else
                {
                    
                    Session["IsUserOnline"] = true;
                    Session["UserMail"] = dt.Rows[0].ToString();
                    Response.Redirect("ListCars.aspx");
                }
            }
            else
            {
                Response.Write("Mail adresi veya şifre hatalı");
            }
            
        }
    }
}