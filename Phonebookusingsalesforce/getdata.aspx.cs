using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Phonebookusingsalesforce
{
    public partial class getdata : System.Web.UI.Page
    {
        public string s;
        protected void Page_Load(object sender, EventArgs e)
        {
         if (Request.Cookies["UserName"].Value == "")
                Response.Redirect("Login.aspx");
            s =Request.Cookies["UserName"].Value;
            Label1.Visible = false;
            Label2.Visible = false;
            Label3.Visible = false;
        }


        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
            db.SforceService proxy = new db.SforceService();
            string uname = tb.Text;
            string email = TextBox8.Text;
            db.LoginResult log = proxy.login("rajatharadhya22@gmail.com", "rajath22NpqIsKVkNMy5kWfMCDZGjpDm0");
            db.SessionHeader main = new db.SessionHeader();
            main.sessionId = log.sessionId;
            proxy.SessionHeaderValue = main;
            proxy.Url = log.serverUrl;
            db.QueryResult result = proxy.query("select Id from phonebook__c where fname__c = '" + uname + "' and email__c ='" + email + "'  ");
            db.sObject[] details = result.records;
            for (int i = 0; i < details.Length; i++)
                {
                    db.phonebook__c connection = (db.phonebook__c)details[i];
                    string[] ar = new string[] {connection.Id};
                    proxy.delete(ar);
                }
            GridView1.DataBind();
            }
            catch(Exception ex)
            {
                System.Diagnostics.Debug.WriteLine(ex.Message);
                Label2.Text =("No Contact to delete");
                Label2.Visible = true;
            }
            tb.Text = "";
            TextBox8.Text = "";
        }


      

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            try
            {

            int i = new int();
            db.SforceService proxy = new db.SforceService();

            db.LoginResult log = proxy.login("rajatharadhya22@gmail.com", "rajath22NpqIsKVkNMy5kWfMCDZGjpDm0");
            db.SessionHeader session = new db.SessionHeader();
            session.sessionId = log.sessionId;
            proxy.SessionHeaderValue = session;
            proxy.Url = log.serverUrl;
            db.QueryResult queryresult = proxy.query("select fname__c, lname__c, email__c, hphone__c, mphone__c from phonebook__c where username__c = '" + s + "' ");
            db.sObject[] track = queryresult.records;
            List<db.phonebook__c> clist = new List<db.phonebook__c>();
           
                for (i = 0; i < track.Length; i++)
                {
                    db.phonebook__c con = (db.phonebook__c)track[i];
                    clist.Add(con);
                    GridView1.DataSource = clist;
                    GridView1.DataBind();
                }
            }
            catch(Exception ex)
            {
                System.Diagnostics.Debug.WriteLine(ex.Message);
                Label3.Text=("No contacts in your phone book");
                Label3.Visible = true;
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            try{
            int i = new int();
            db.SforceService proxy = new db.SforceService();
            string r = TextBox7.Text;
            db.LoginResult log = proxy.login("rajatharadhya22@gmail.com", "rajath22NpqIsKVkNMy5kWfMCDZGjpDm0");
            db.SessionHeader session = new db.SessionHeader();
            session.sessionId = log.sessionId;
            proxy.SessionHeaderValue = session;
            proxy.Url = log.serverUrl;
            db.QueryResult queryresult = proxy.query("select fname__c, lname__c, email__c, hphone__c, mphone__c from phonebook__c where username__c = '" + s + "' and fname__c ='" + r + "'  ");
            db.sObject[] track = queryresult.records;
            List<db.phonebook__c> clist = new List<db.phonebook__c>();
           
                for (i = 0; i < track.Length; i++)
                {
                    db.phonebook__c con = (db.phonebook__c)track[i];
                    clist.Add(con);
                    GridView1.DataSource = clist;
                    GridView1.DataBind();
                }
            }
            catch(Exception ex)
            {
                System.Diagnostics.Debug.WriteLine(ex.Message);
                   Label1.Text= ("No contacts by this first name ");
                    Label1.Visible = true;
            }
            TextBox7.Text = "";
        }
    }
}