<%@ Page Language="C#" %>
<%@ Import Namespace="System.Web.Mail" %>
<%@ Import Namespace="System.Net" %> 
<%@ Import Namespace="System.Web.UI.HtmlControls" %>  
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8" />
    <title></title>  
          <script language="c#" runat="server">
public void Page_Load(object sender, EventArgs e)
{
  
}
protected void btnSend_Click(object sender, EventArgs e)
{
    string fromAddress = "chetan@kanaiyatravels.com";// Gmail Address from where you send the mail
    const string fromPassword = "HARBHOLE1_969";//Password of your gmail address    
    string toAddress = "kanaiyatravels@gmail.com";
    string subject1 = "Online Contact from Website";
    string body = "From: " + name.Value + "\n";
    body += "Email: " + email.Value + "\n";
    body += "Mobile: " + mobile.Value + "\n";
	body += "Company: " + cmp.Value + "\n";
	body += "Designation: " + dsn.Value + "\n";
    body += "Posel Code: " + psc.Value + "\n";
	body += "City: " + city.Value + "\n";
	body += "Office Space: \n" + osaf.Value + "\n";
	body += "Address: \n" + add.Value + "\n";
	body += "Present Nature of Business : \n" + pnb.Value + "\n";
	body += "Other Detail: \n" + Other.Value + "\n";
    var smtp = new System.Net.Mail.SmtpClient();
    {
        smtp.Host = "smtp.gmail.com";
        smtp.Port = 587;
        smtp.EnableSsl = true;
        smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
        smtp.Credentials = new NetworkCredential(fromAddress, fromPassword);
        smtp.Timeout = 20000;
    }
    smtp.Send(fromAddress, toAddress, subject1, body);
    lblMsgSend.Text = "Thank you for contacting";
    lblMsgSend.Visible = true;
    email.Value = "";
    name.Value = "";
    mobile.Value = "";
	cmp.Value = "";
	dsn.Value = "";
	psc.Value = "";
	city.Value = "";
	osaf.Value = "";
	add.Value = "";
	pnb.Value = "";
	Other.Value = "";
}
protected void btnReset_Click(object sender, EventArgs e)
{
     
    
    email.Value = "";
    name.Value = "";
    mobile.Value = "";
	cmp.Value = "";
	dsn.Value = "";
	psc.Value = "";
	city.Value = "";
	osaf.Value = "";
	add.Value = "";
	pnb.Value = "";
	Other.Value = "";
}
</script>
          <style type="text/css">
<!--
.style4 {font-weight: bold}
-->
          </style>
<script>$(window).load(function() {
    $('#loading').hide();
  });</script>
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
</head><body>

    <form id="form1" runat="server">   
         <div id="contactform"> <br>
         <table width="700" border="0" align="center" cellpadding="0" cellspacing="0">
           <tr>
             <td width="700" bgcolor="#0000FF">&nbsp;</td>
           </tr>
           <tr>
             <td bgcolor="#FFFFFF">&nbsp;</td>
  </tr>
           <tr>
             <td><table width="700" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFCC">
               <tr>
                 <td width="201" align="right"><label for="name"><strong>Full Name *</strong></label></td>
                 <td width="8">&nbsp;</td>
                 <td colspan="3"><input id="name" runat="server" name="name" class="text" /></td>
               </tr>
               <tr>
                 <td></td>
                 <td>&nbsp;</td>
                 <td colspan="3" align="left">&nbsp;</td>
               </tr>
               <tr>
                 <td align="right"><label for="email"><strong>Your email *</strong></label></td>
                 <td>&nbsp;</td>
                 <td colspan="3" align="left"><input id="email" runat="server" name="email" class="text" /></td>
               </tr>
               <tr>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td colspan="3">&nbsp;</td>
               </tr>
               <tr>
                 <td align="right"><label for="mobile"><strong>Mobile *</strong></label></td>
                 <td>&nbsp;</td>
                 <td colspan="3" align="left"><input id="mobile" runat="server" name="mobile" class="text" /></td>
               </tr>
               <tr>
                 <td align="right">&nbsp;</td>
                 <td>&nbsp;</td>
                 <td colspan="3" align="left">&nbsp;</td>
               </tr>
               <tr>
                 <td align="right"><label for="cmp"><strong>Company *</strong></label></td>
                 <td>&nbsp;</td>
                 <td colspan="3" align="left"><input id="cmp" runat="server" name="cmp" class="text" /></td>
               </tr>
               <tr>
                 <td align="right">&nbsp;</td>
                 <td>&nbsp;</td>
                 <td colspan="3" align="left">&nbsp;</td>
               </tr>
               <tr>
                 <td align="right"><label for="dsn"><strong>Disignation *</strong></label></td>
                 <td>&nbsp;</td>
                 <td colspan="3" align="left"><input id="dsn" runat="server" name="dsn" class="text" /></td>
               </tr>
               <tr>
                 <td align="right">&nbsp;</td>
                 <td>&nbsp;</td>
                 <td colspan="3" align="left">&nbsp;</td>
               </tr>
               <tr>
                 <td height="84" align="right" valign="middle"><span class="style4">
                   <label for="add">Address *</label>
                 </span></td>
                 <td>&nbsp;</td>
                 <td colspan="3" align="left"><textarea id="add" runat="server" name="add" rows="4" cols="50"></textarea></td>
               </tr>
               <tr>
                 <td align="right">&nbsp;</td>
                 <td>&nbsp;</td>
                 <td colspan="3" align="left">&nbsp;</td>
               </tr>
               <tr>
                 <td align="right"><label for="psc"><strong>Postel Code *</strong></label></td>
                 <td>&nbsp;</td>
                 <td width="144" align="left"><input id="psc" runat="server" name="psc" class="text" width="100"/></td>
                 <td width="151" align="center"><label for="city"><strong>City *</strong></label></td>
                 <td width="196" align="left"><input id="city" runat="server" name="city" class="text" width="100"/></td>
               </tr>
               <tr>
                 <td align="right">&nbsp;</td>
                 <td>&nbsp;</td>
                 <td colspan="3" align="left">&nbsp;</td>
               </tr>
               <tr>
                 <td align="right"><label for="pnb"><strong><span style="font-weight: bold">Present Nature of Business</span> *</strong></label></td>
                 <td>&nbsp;</td>
                 <td colspan="3" align="left"><textarea id="pnb" runat="server" name="pnb" rows="3" cols="50"></textarea></td>
               </tr>
               <tr>
                 <td align="right">&nbsp;</td>
                 <td>&nbsp;</td>
                 <td colspan="3" align="left">&nbsp;</td>
               </tr>

               <tr>
                 <td align="right"><label for="osaf"><strong><span style="font-weight: bold">Office Space available for the Franchisee</span> *</strong></label></td>
                 <td>&nbsp;</td>
                 <td align="left"><input id="osaf" runat="server" name="osaf" class="text" />                 </td>
                 <td align="center"><strong>In Square Feets</strong> *</td>
               </tr>
               <tr>
                 <td align="right">&nbsp;</td>
                 <td>&nbsp;</td>
                 <td colspan="3" align="left">&nbsp;</td>
               </tr>
               <tr>
                 <td align="right"><label for="Other"><strong><span style="font-weight: bold">Additional Informations</span>  *</strong></label></td>
                 <td>&nbsp;</td>
                 <td colspan="3" align="left"><textarea id="Other" runat="server" name="Other" rows="5" cols="50"></textarea></td>
               </tr>
               <tr>
                 <td class="buttons" align="right">&nbsp;</td>
                 <td>&nbsp;</td>
                 <td class="buttons" colspan="3" align="left"><br>
                     <asp:ImageButton ID="btnSend" ImageUrl="Image\button\SendNow.gif"  runat="server" text="Send message" OnClick="btnSend_Click" validationgroup="save" />               
                     <asp:ImageButton ID="btnReset" ImageUrl="Image\button\Reset.gif"  runat="server" text="Reset" OnClick="btnReset_Click" validationgroup="save" />               
                     <br>                 </td>
               </tr>
             </table></td>
           </tr>
           
           <tr>
             <td align="center">&nbsp;</td>
    </tr>
  </table>
      </div><asp:Label ID="lblMsgSend" ForeColor="Red" runat="server" Visible="false" />
    </form>
</body>
</html>
