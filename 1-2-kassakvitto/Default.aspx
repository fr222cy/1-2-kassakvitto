<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="_1_2_kassakvitto.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
  <link href="Style/Style.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Kassakvitto</h1>
        <p style="height: 24px">Total Köpsumma:</p>
    </div>
        <p style="height: 24px">
        <asp:TextBox ID="TextBox1" runat="server" Height="16px" style="margin-top: 0px" Width="127px" defaultfocus="TextBox1">
        </asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Du måste skriva in någonting." Display="Dynamic" ControlToValidate="TextBox1">Du måste mata in någonting.</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="CompareValidator" ControlToValidate="TextBox1" Display="Dynamic" Operator="GreaterThan" Type="Double" ValueToCompare="0">Du måste skriva in ett tal över 0.</asp:CompareValidator>
            kr</p>
        <asp:Button ID="Button1" runat="server" Text="Beräkna Rabatt" OnClick="Button1_Click" />
    </form>


    <div id="ReceiptDiv" runat="server" >
        <h3>Lata Luddes Livs</h3>
        <h4>"Bättre än alla andra"</h4>
        <p>Tel: 0480-41337<br />
           09:00-09:30 alla tisdagar.
        </p>
           
            <p id="labels">
            Totalt:<asp:Label ID="totalLabel" runat="server" Text="Label"></asp:Label><br />
        
            Rabattsats:<asp:Label ID="DiscountRateLabel" runat="server" Text="Label"></asp:Label><br />
       
            Rabatt:<asp:Label ID="DiscountLabel" runat="server" Text="Label"></asp:Label><br />
        
            Att Betala:<asp:Label ID="PayLabel" runat="server" Text="Label"></asp:Label></p>
        <h5>ORG-NR: 4324-43235</h5>
        <h5>ÅTERKOM IMORGON!</h5>
        </div>

        
</body>
</html>
