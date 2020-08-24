<%@ Page Language="C#"  %>
<%@ Import Namespace="System.Net" %> 
<%@ Import Namespace="System.Web.UI.HtmlControls" %> 
<%@ Import Namespace="System.Net.Mail" %> 
<%@ Import Namespace="System.IO" %> 
<%@ Import Namespace="System.Configuration" %> 
<%@ Import Namespace="System" %> 
<%@ Import Namespace="System.Web" %> 
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
<script type="text/C#" runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!Page.IsPostBack)
           {
               ViewState["PreviousPageUrl"] = System.IO.Path.GetFileNameWithoutExtension(Request.UrlReferrer.AbsoluteUri);
               Response.Write(ViewState["PreviousPageUrl"].ToString());
            }
        
    }
    protected void btnSend_Click(object sender, EventArgs e)
    {
        
            if (!Page.IsPostBack)
            {
                ViewState["PreviousPageUrl"] = System.IO.Path.GetFileNameWithoutExtension(Request.UrlReferrer.AbsoluteUri);
                Response.Write(ViewState["PreviousPageUrl"].ToString());
            }
        



       // StreamReader reader = new StreamReader(Server.MapPath(ViewState["PreviousPageUrl"] + ".pdf"));
       // string readFile = reader.ReadToEnd();
       // string myString = "";
       // myString = readFile;
        MailMessage mail = new MailMessage();
        SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");
        mail.From = new MailAddress("chetan@kanaiyatravels.com");
        mail.To.Add(TextBox1.Text);

        mail.Subject = "Kanaiya Travels";
        mail.Body = "Download The Above Attachment For The Better Visualization of Tour Program:";
      //  mail.Body = myString.ToString();
        System.Net.Mail.Attachment attachment;
        attachment = new System.Net.Mail.Attachment(Server.MapPath(ViewState["PreviousPageUrl"] + ".pdf"));
        mail.Attachments.Add(attachment);

        mail.IsBodyHtml = true;



        SmtpServer.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;

        SmtpServer.Timeout = 20000;

        SmtpServer.Port = 587;
        SmtpServer.Credentials = new System.Net.NetworkCredential("chetan@kanaiyatravels.com", "HARBHOLE1_969");
        SmtpServer.EnableSsl = true;

        SmtpServer.Send(mail);
        Label1.Text = "The Mail Has Been Sended SuccessFully !Thank You";
        Label1.Visible = true;

    }

    
</script>
<script type="text/javascript">
$(document).ready(function () {
    //Disable full page
    $('body').bind('cut copy paste', function (e) {
        e.preventDefault();
    });
    
    //Disable part of page
    $('#id').bind('cut copy paste', function (e) {
        e.preventDefault();
    });
});
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div style="width: 537px">
        <p style="font-weight: 700; color: #CC0000; " class="style1">EMAIL Itenary TO Your Friend</p>
        <p style="font-weight: 700; color: #CC0000; font-size: xx-large; width: 606px;">
            <asp:TextBox ID="TextBox1"  placeholder=" Enter Your Freind Email Address" runat="server" Height="33px" Width="398px"></asp:TextBox><br />
            <asp:Label ID="Label1" runat="server" Text="" style="font-size: 16px"></asp:Label>
            <asp:Label ID="Label2" runat="server" style="font-size: small" Text=""></asp:Label>
        </p>
    <asp:Button ID="btnSend" Text="Send Mail" runat="server" onclick="btnSend_Click" BackColor="Red" ForeColor="White" Height="42px" Width="140px" />
    </div>
  
    </form>
</body>
</html>
