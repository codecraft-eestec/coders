using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.ManagedDataAccess.Client;

namespace WebApplication1
{
    public partial class Login : System.Web.UI.Page
    {

        OracleConnection con = new OracleConnection("user id=myUser; password=civilization3;" +
        "data source =localhost/XE; pooling=false;");
        OracleCommand cmd = new OracleCommand();
        OracleDataReader data;

        protected void Page_Load(object sender, EventArgs e)
        {
          
           
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            if (TextBox1.Text == "")
            {
                TextBox1.CssClass = "alert-danger";
            }
            else
            {
                int p = TextBox1.Text.IndexOf('@');
                if (p > 0)
                {
                    string temp = TextBox1.Text.Substring(p + 1);
                    
                    switch (temp)
                    {
                        case "gmail.com":

                            TextBox1.CssClass = "alert-success";
                            break;
                        case "yahoo.com":

                            TextBox1.CssClass = "alert-success";
                            break;
                        case "hotmail.com":

                            TextBox1.CssClass = "alert-success";
                            break;
                        default:
                           
                            TextBox1.CssClass = "alert-danger";
                            break;
                    }
                }
                else
                {

                    TextBox1.CssClass = "alert-danger";
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(TextBox2.Text!="" && TextBox1.CssClass== "alert-success")
            {
                con.Open();
                
                cmd.Connection = con;
                cmd.CommandText = "select password from appuser where Email='"+TextBox1.Text+"'";
                cmd.CommandTimeout = 1000;
                data = cmd.ExecuteReader();
                
                if(data.Read())
                {
                    string reaspas = data.GetString(0);
                    if (reaspas == TextBox2.Text)
                    {
                        TextBox2.Text = "uspesno";
                        TextBox2.CssClass = "alert-success";
                    }
                    else
                        TextBox2.Text = "neuspesno";
                }
                con.Close();
            }
            else
            {
                TextBox2.CssClass = "alert-danger";
            }
        }
    }
}




/*select *
from v$parameter
where NAME like '%service_name%';

SELECT UTL_INADDR.get_host_name FROM dual;

SELECT sys_context('USERENV', 'SID') FROM DUAL;*/
