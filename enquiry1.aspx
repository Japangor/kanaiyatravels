<%@ Page Language="C#" AutoEventWireup="true" CodeFile="enquiry1.aspx.cs" Inherits="enquiry" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style5
        {
            font-weight: 700;
            font-size: x-large;
            color: #FFFFFF;
        }
        #name
        {
            width: 312px;
        }
        #email
        {
            width: 306px;
        }
        #mobile
        {
            width: 245px;
        }
    </style>
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
<body > 
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
          <td width="8">&nbsp; &nbsp;</td>
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
                 <td align="right" class="auto-style1"></td>
          <td class="auto-style1"></td>
          <td colspan="3" align="left" class="auto-style1"></td>
        </tr>
            
               <tr>
                 <td height="84" align="right" valign="middle"><span class="style4">
                   <label for="Tourdetail">Tour Destination &amp; Tour Detail *</label>
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
          (5 to 11 Years) </td>
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
                   (No. Of. Total) </td>
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
        <asp:ImageButton ID="btnSend" ImageUrl="http://www.kanaiyatravels.com/Image\button\SendNow.gif"  runat="server" Text="Send message" OnClick="btnSend_Click" ValidationGroup="save" Height="31px" Width="116px" />&nbsp;
            <asp:ImageButton ID="btnReset" ImageUrl="http://www.kanaiyatravels.com/Image\button\Reset.gif" Height="31px" Width="116px"  runat="server" Text="Reset" OnClick="btnReset_Click" ValidationGroup="save" />
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
