<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Enquiry.aspx.cs" Inherits="_Default" %>


<!DOCTYPE html>



<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
  
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
<body style="width: 228px;height:398px;">
  <form id="form1" runat="server">
    <div style="font-size: large; background-color: #0099FF; text-align: center; width: 247px;">
        <span style="text-align: center; color: #FFFFFF; background-color: #0099FF">Enquiry</span>
        <table style="margin-bottom: 0px; height: 296px; width: 229px; background-color: #FF5050;">
            <!-- Name -->
            <tr>
               
                <td>
                    <asp:TextBox ID="Name"  CausesValidation="true" ValidateRequestMode="Enabled" AutoCompleteType="BusinessCity" Placeholder="Enter Your Name"
                                    runat="server"
                                    Columns="50" Width="228px"></asp:TextBox>
                     
                </td>
            </tr>
             <tr>
              
                <td>
                    <asp:TextBox ID="email" Placeholder="Enter Your EMAIL"
                                    runat="server"
                                    Columns="50" Width="228px"></asp:TextBox>
                    <br />
                     
                </td>
            </tr>
             <tr>
              
                <td>
                    <asp:TextBox ID="mobile" Placeholder="Enter YOur Phone Number"
                                    runat="server"
                                    Columns="50" Width="228px"></asp:TextBox>
                </td>
            </tr>
            <tr>
              
                <td>
                    <asp:TextBox ID="city" Placeholder="Enter Your City Name"
                                    runat="server"
                                    Columns="50" Width="228px"></asp:TextBox>
                </td>
            </tr>
            <tr>
              
                <td>
                    <asp:TextBox ID="noadlt" Placeholder="Enter No of ADULTS:"
                                    runat="server" Columns="50" Width="228px"></asp:TextBox>
                </td>
            </tr>
            <tr>
              
                <td>
                    <asp:TextBox ID="nochild" Placeholder="Enter No of CHILDS"
                                    runat="server" Width="228px"
                                    Columns="50"></asp:TextBox>
                </td>
            </tr>
 
            <!-- Subject -->
            <tr>
             
                <td>
                    
                    <asp:TextBox ID="date" Placeholder="Enter Your Travel Date & Month"
                                    runat="server" Width="228px"
                                    Columns="50"></asp:TextBox>
                </td>
            </tr>
 
            <!-- Message -->
            <tr>
               
                <td>
                    <asp:TextBox ID="detail" Placeholder="Enter Your Tour Detail"
                                    runat="server"
                                    Columns="40"
                                    Rows="6" Width="228px"
                                    TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
 
            <!-- Submit -->
            <tr align="center">
                <td colspan="2" style="background-color: #3399FF">
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit"
                        onclick="btnSubmit_Click" OnClientClick="myfunc()"  style="height: 26px" />
                    <br />
                    <asp:Label ID="lblresult" runat="server" Text="" style="color: #FFFFFF"></asp:Label>
                     
                </td>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
  
        </table>
    </div>
    </form>
</body>
</html>
