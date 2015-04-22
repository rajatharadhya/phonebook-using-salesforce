using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Phonebookusingsalesforce
{
    public partial class registerpage : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
        }
         protected void Button1_Click(object sender, EventArgs e)
        {
            db.SforceService prox = new db.SforceService();
            db.LoginResult log = prox.login("$$$$$$$$$$$$$@gmail.com", "$$$$$$$$$$$$$$$$$");
            db.SessionHeader open = new db.SessionHeader();
            open.sessionId = log.sessionId;
            prox.SessionHeaderValue = open;
            prox.Url = log.serverUrl;
            if(TextBox2.Text!=TextBox3.Text)
            {
                Label1.Text = ("Passwords don't match.Renter Passwords.");
                Label1.Visible = true;
                TextBox2.Text = "";
                TextBox3.Text = "";
            }
            else
            {
              db.users__c rem = new db.users__c();
              rem.userid__c = TextBox1.Text;
              rem.password__c = TextBox2.Text;
              prox.create(new db.users__c[] { rem });
              Response.Redirect("login.aspx");
            }
        }
    }
}