using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.IO;
using System.Configuration;


public partial class enquiry : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSend_Click(object sender, ImageClickEventArgs e)
    {
        if (name.Value == "")
        {
            lblMsgSend.Text = "Pls Enter Your Name";
        }
        else if (email.Value == "")
        {
            lblMsgSend.Text = "Pls Enter Your Email Address";
        }
        else if (mobile.Value == "")
        {
            lblMsgSend.Text = "Pls Enter Your Mobile Number";
        }
        else if (Tourdetail.Value == "")
        {
            lblMsgSend.Text = "Pls Enter Your Tour Deatil";
        }
        else
        {
            StreamReader reader = new StreamReader(Server.MapPath("~/HTMLPage2.htm"));
            string readFile = reader.ReadToEnd();
            string myString = "";
            myString = readFile;
            myString = myString.Replace("$$Admin$$", name.Value);
            myString = myString.Replace("$$CompanyName$$", email.Value);
            myString = myString.Replace("$$Phone$$", mobile.Value);
            myString = myString.Replace("$$Room$$", room.Value);
            myString = myString.Replace("$$Adult$$", adult.Value);
            myString = myString.Replace("$$Child$$", child.Value);
            myString = myString.Replace("$$Date$$", Departure.Value);
            myString = myString.Replace("$$rDate$$", Return.Value);
            myString = myString.Replace("$$Detail$$", Tourdetail.Value);
            myString = myString.Replace("$$oDetail$$", Other.Value);
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
            SmtpServer.Credentials = new System.Net.NetworkCredential("chetan@kanaiyatravels.com", "KANAIYA1_969");
            SmtpServer.EnableSsl = true;

            SmtpServer.Send(mail);
            mail.To.Add(email.Value);
            mail.Body = (name.Value + "  " + "Thank You For Contacting Kanaiya Travels , We Will Reply You Soon as Possible");
            SmtpServer.Send(mail);
            lblMsgSend.Text = "The Mail has Been Send Successfuly!!!";

            lblMsgSend.Visible = true;
            email.Value = "";
            name.Value = "";
            mobile.Value = "";
            Tourdetail.Value = "";
            Departure.Value = "";
            child.Value = "";
            adult.Value = "";
            Return.Value = "";
            Other.Value = "";
            room.Value = "";
        }
    }
    protected void btnReset_Click(object sender, ImageClickEventArgs e)
    {
      
    }
}