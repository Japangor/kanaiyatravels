using System;
using System.Net.Mail;
using System.IO;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (Name.Text == "")
        {
            lblresult.Text = "Pls Enter Your Name";
        }
        else if (email.Text == "")
        {
            lblresult.Text = "Pls Enter Your Email Address";
        }
        else if (mobile.Text == "")
        {
            lblresult.Text = "Pls Enter Your Mobile Number";
        }
        else if (detail.Text == "")
        {
            lblresult.Text = "Pls Enter Your Tour Deatil";
        }
        else
        {
            StreamReader reader = new StreamReader(Server.MapPath("~/HTMLPage.html"));
            string readFile = reader.ReadToEnd();
            string myString = "";
            myString = readFile;
            myString = myString.Replace("$$Admin$$", Name.Text);
            myString = myString.Replace("$$CompanyName$$", email.Text);
            myString = myString.Replace("$$Phone$$", mobile.Text);
            myString = myString.Replace("$$City$$", city.Text);
            myString = myString.Replace("$$Adult$$", noadlt.Text);
            myString = myString.Replace("$$Child$$", nochild.Text);
            myString = myString.Replace("$$Date$$", date.Text);
            myString = myString.Replace("$$Detail$$", detail.Text);
            MailMessage mail = new MailMessage();
            SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");
            mail.From = new MailAddress("chetan@kanaiyatravels.com");
            mail.To.Add("kanaiyatravels@gmail.com");
            mail.Subject = "Kanaiya Travels";
            mail.Body = myString.ToString();

            mail.IsBodyHtml = true;

            SmtpServer.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;

            SmtpServer.Timeout = 20000;

            SmtpServer.Port = 587;
            SmtpServer.Credentials = new System.Net.NetworkCredential("chetan@kanaiyatravels.com", "HARBHOLE1_969");
            SmtpServer.EnableSsl = true;

            SmtpServer.Send(mail);
            mail.To.Add(email.Text);
            mail.Body = (Name.Text + "  " + "Thank You For Contacting Kanaiya Travels , We Will Reply You Soon as Possible");
            SmtpServer.Send(mail);
            lblresult.Text = "The Mail has Been Send Successfuly!!!";

            lblresult.Visible = true;
            email.Text = "";
            Name.Text = "";
            mobile.Text = "";
            city.Text = "";
            detail.Text = "";
            date.Text = "";
            nochild.Text = "";
            noadlt.Text = "";
        }
    }
}