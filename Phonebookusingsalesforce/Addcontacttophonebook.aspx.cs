using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Phonebookusingsalesforce
{
    public partial class Addcontacttophonebook : System.Web.UI.Page
    {
        public string s;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["UserName"].Value == "")
                Response.Redirect("Login.aspx");
            s = Request.Cookies["UserName"].Value;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                db.SforceService prox = new db.SforceService();

                db.LoginResult log = prox.login("rajatharadhya22@gmail.com", "rajath22NpqIsKVkNMy5kWfMCDZGjpDm0");
                db.SessionHeader open = new db.SessionHeader();
                open.sessionId = log.sessionId;
                prox.SessionHeaderValue = open;
                prox.Url = log.serverUrl;
                db.phonebook__c rem = new db.phonebook__c();
                rem.fname__c = fname.Text;
                rem.lname__c = lname.Text;
                rem.email__c = email.Text;
                rem.hphone__c = hphone.Text;
                rem.mphone__c = mphone.Text;
                rem.username__c = s;
                prox.create(new db.phonebook__c[] { rem });
                Response.Redirect("getdata.aspx");
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine(ex.Message);
            }
        }
    }
}