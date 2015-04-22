using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Phonebookusingsalesforce
{
    public partial class WebForm1 : System.Web.UI.Page
    {
         protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
        }

 

        protected void Button1_Click1(object sender, EventArgs e)
        {
            try
            {
                db.SforceService prox = new db.SforceService();

                db.LoginResult log = prox.login("rajatharadhya22@gmail.com", "rajath22NpqIsKVkNMy5kWfMCDZGjpDm0");
                db.SessionHeader open = new db.SessionHeader();
                open.sessionId = log.sessionId;
                prox.SessionHeaderValue = open;
                prox.Url = log.serverUrl;
                string a = TextBox1.Text;
                string b = TextBox2.Text;
                HttpCookie cookie = new HttpCookie("UserName");
                cookie.Value = TextBox1.Text;
                cookie.Expires = DateTime.Now.AddDays(1);
                Response.Cookies.Add(cookie);
                db.QueryResult get = prox.query("select userid__c, password__c from users__c where userid__c = '" + a + "' and password__c = '" + b + "'");
                if (get.size == 0)
                {
                    Label1.Visible = true;
                    Label1.Text = "Re-enter Username and Password  ";
                }
                else
                {
                    Response.Redirect("getdata.aspx");
                }
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine(ex.Message);
                Label1.Visible = true;
                Label1.Text = "Re-enter Username and Password  ";
            }
            
            
        }
    }
}