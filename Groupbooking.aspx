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
    body += "Adult: " + adult.Value + "\n";
	body += "Child: " + child.Value + "\n";
	body += "room: " + room.Value + "\n";
	body += "Bed: " + Bed.Value + "\n";
	body += "Pick Up From: " + room.Value + "\n";
	body += "Drop To: " + Bed.Value + "\n";
	body += "Departure: \n" + Departure.Value + "\n";
	body += "Return: \n" + Return.Value + "\n";
	body += "Tour Detail: \n" + Tourdetail.Value + "\n";
	body += "Vehicle Detail: \n" + Vehicledetail.Value + "\n";
	body += "Hotels Detail: \n" + Hotelsdetail.Value + "\n";
	body += "Food Detail: \n" + Fooddetail.Value + "\n";
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
	adult.Value = "";
	child.Value = "";
	room.Value = "";
	Bed.Value = "";
	PickupFrom.Value = "";
	Dropto.Value = "";
	Departure.Value = "";
	Return.Value = "";
	Tourdetail.Value = "";
	Vehicledetail.Value = "";
	Hotelsdetail.Value = "";
	Fooddetail.Value = "";
	Other.Value = "";
}
protected void btnReset_Click(object sender, EventArgs e)
{
     
    
    email.Value = "";
    name.Value = "";
    mobile.Value = "";
	adult.Value = "";
	child.Value = "";
	room.Value = "";
	Bed.Value = "";
	PickupFrom.Value = "";
	Dropto.Value = "";
	Departure.Value = "";
	Return.Value = "";
	Tourdetail.Value = "";
	Vehicledetail.Value = "";
	Hotelsdetail.Value = "";
	Fooddetail.Value = "";
	Other.Value = "";
}
</script>
          <style type="text/css">
<!--
.style4 {font-weight: bold}
.style5 {
	color: #EEEEEE;
	font-weight: bold;
	font-size: 24px;
}
-->
          </style>
<script>$(window).load(function() {
    $('#loading').hide();
  });</script>

</head><body > 
<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-K29298R"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->

    <form id="form1" runat="server">   
         <div id="contactform"> <br>
         <table width="700" border="0" align="center" cellpadding="0" cellspacing="0">
           <tr>
             <td width="700" align="center" bgcolor="#0000FF"><span class="style5">Enquiry Form</span></td>
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
               <tr>        </tr>
               
               <tr>
                 <td height="84" align="right" valign="middle"><span class="style4">
                   <label for="Tourdetail">Tour Detail *</label>
                   </span></td>
          <td>&nbsp;</td>
          <td colspan="3" align="left"><textarea id="Tourdetail" runat="server" name="Tourdetail" rows="4" cols="50"></textarea></td>
        </tr>
               <tr>
                 <td align="right">&nbsp;</td>
          <td>&nbsp;</td>
          <td colspan="3" align="left"><strong>Total No. of Passanger </strong></td>
        </tr>
               <tr>
                 <td align="right"><label for="adult"><strong>Adult *</strong></label></td>
          <td>&nbsp;</td>
          <td width="144" align="left"><input id="adult" runat="server" name="adult" class="text" width="100"/></td>
          <td width="134" align="center"><label for="child"><strong>Child *</strong></label></td>
          <td width="213" align="left"><input id="child" runat="server" name="child" class="text" width="100"/> 
          <br>
          <strong>(5 to 11 Years) </strong></td>
      </tr>
               <tr>
                 <td align="right">&nbsp;</td>
                 <td>&nbsp;</td>
                 <td colspan="3" align="left">&nbsp;</td>
               </tr>
               <tr>
                 <td align="right"><label for="room"><strong>Require Room  *</strong></label></td>
                 <td>&nbsp;</td>
                 <td align="left"><input id="room" runat="server" name="room" class="text" width="100"/></td>
                 <td align="center"><label for="Bed"><strong>Extra Bed  *</strong></label></td>
                 <td align="left"><input id="Bed" runat="server" name="Bed" class="text" width="100"/>
                     <br>
                     <strong>(No. Of. Total) </strong></td>
               </tr>
               <tr>
                 <td align="right">&nbsp;</td>
                 <td>&nbsp;</td>
                 <td colspan="3" align="left">&nbsp;</td>
               </tr>
               <tr>
                 <td align="right"><label for="PickupFrom"><strong>Pick Up From<br>
                   (Tour Start Point)
                 *</strong></label></td>
                 <td>&nbsp;</td>
                 <td align="left"><input id="PickupFrom" runat="server" name="PickupFrom" class="text" width="100"/></td>
                 <td align="center"><label for="Dropto"><strong>Drop To  *</strong></label></td>
                 <td align="left"><input id="Dropto" runat="server" name="Dropto" class="text" width="100"/>
                     <br>
                     <strong>(Last Point)</strong><br></td>
               </tr>
               <tr>
                 <td align="right">&nbsp;</td>
          <td>&nbsp;</td>
          <td colspan="3" align="left">&nbsp;</td>
        </tr>
               <tr>
                 <td align="right"><label for="Vehicledetail"><strong>Vehicle Detail *</strong></label></td>
          <td>&nbsp;</td>
          <td colspan="3" align="left"><textarea id="Vehicledetail" runat="server" name="Vehicledetail" rows="3" cols="50"></textarea></td>
        </tr>
               <tr>
                 <td align="right">&nbsp;</td>
          <td>&nbsp;</td>
          <td colspan="3" align="left">&nbsp;</td>
        </tr>
               <tr>
                 <td align="right"><label for="Hotelsdetail"><strong>Hotels Detail *</strong></label></td>
          <td>&nbsp;</td>
          <td colspan="3" align="left"><textarea id="Hotelsdetail" runat="server" name="Hotelsdetail" rows="3" cols="50"></textarea></td>
        </tr>
               <tr>
                 <td align="right">&nbsp;</td>
          <td>&nbsp;</td>
          <td colspan="3" align="left">&nbsp;</td>
        </tr>
               <tr>
                 <td align="right"><label for="Fooddetail"><strong>Food Detail *</strong></label></td>
          <td>&nbsp;</td>
          <td colspan="3" align="left"><textarea id="Fooddetail" runat="server" name="Fooddetail" rows="3" cols="50"></textarea></td>
        </tr>
               <tr>
                 <td align="right">&nbsp;</td>
          <td>&nbsp;</td>
          <td colspan="3" align="left">&nbsp;</td>
        </tr>
               <tr>
                 <td align="right"><label for="Departure"><strong>Departure Date *</strong></label></td>
          <td>&nbsp;</td>
          <td align="left"><input id="Departure" runat="server" name="Departure" class="text" /> </td>
          <td align="center"><label for="Return"><strong>Return date *</strong></label></td>
          <td align="left"><input id="Return" runat="server" name="Return" class="text" /></td>
        </tr>
               <tr>
                 <td align="right">&nbsp;</td>
          <td>&nbsp;</td>
          <td colspan="3" align="left">&nbsp;</td>
        </tr>
               <tr>
                 <td align="right"><label for="Other"><strong>Other Detail  *</strong></label></td>
          <td>&nbsp;</td>
          <td colspan="3" align="left"><textarea id="Other" runat="server" name="Other" rows="5" cols="50"></textarea></td>
        </tr>
               <tr>
                 <td class="buttons" align="right">&nbsp;</td>
          <td>&nbsp;</td>
          <td class="buttons" colspan="3" align="left"><br>
        <asp:ImageButton ID="btnSend" ImageUrl="Image\button\SendNow.gif"  runat="server" Text="Send message" OnClick="btnSend_Click" ValidationGroup="save" />
            <asp:ImageButton ID="btnReset" ImageUrl="Image\button\Reset.gif"  runat="server" Text="Reset" OnClick="btnReset_Click" ValidationGroup="save" />
            <br>          </td></tr>
               
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
