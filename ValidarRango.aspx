<%@Page language="C#" AutoEventWireUp="false" 
CodeBehind="ValidarRango" 
Inherits="blog.listings.ValidarRango"%>
<html>
<head><title>Validar Rango</title></head>
<body>
<p>Fecha de nacimiento</p>
<form id="frmRange" runat="server">
<table>
<tr>
<td>Dia</td>
<td>
<asp:TextBox id="txtDay" Runat="server" Maxlength="2" 
Columns="3"></asp:TextBox>
<asp:RangeValidator id="rngvtxtDay" Runat="server" 
Display="Dynamic" ErrorMessage="* Fuera de rango" 
ControlToValidate="txtDay" Type="Integer" MinimumValue="1" 
MaximumValue="31"></asp:RangeValidator>
<asp:RequiredFieldValidator id="reqvtxtDay" Runat="server" 
ControlToValidate="txtDay" ErrorMessage="* Obligatorio">
</asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td>Mes</td>
<td>
<asp:TextBox id="txtMonth" Runat="server" Maxlength="2"
Columns="3"></asp:TextBox>
<asp:RangeValidator id="rngvtxtMonth" Runat="server" 
Display="Dynamic" ErrorMessage="* Fuera de rango" 
ControlToValidate="txtMonth" Type="Integer" MinimumValue="1" 
MaximumValue="12"></asp:RangeValidator>
<asp:RequiredFieldValidator id="reqvtxtMonth" Runat="server" 
ControlToValidate="txtMonth" ErrorMessage="* Obligatorio">
</asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td>Año (entre 1950 y 1989)</td>
<td>
<asp:TextBox id="txtYear" Runat="server" MaxLength="4" 
Columns="6"></asp:TextBox>
<asp:RangeValidator id="rngvtxtYear" Runat="server" Display="Dynamic" 
ErrorMessage="* Fuera de rango" ControlToValidate="txtYear" Type="Integer" 
MinimumValue="1950" MaximumValue="1989"></asp:RangeValidator>
<asp:RequiredFieldValidator id="reqvtxtYear" Runat="server" 
ControlToValidate="txtYear" ErrorMessage="* Obligatorio">
</asp:RequiredFieldValidator>
</td>
</tr>
</table>
<br>
<asp:Button id="btnSubmit" Runat="server" Text="Validar"></asp:Button>
<br>
<asp:Label id="lbMsg" Runat="server"></asp:Label>
</form>
</body></html>