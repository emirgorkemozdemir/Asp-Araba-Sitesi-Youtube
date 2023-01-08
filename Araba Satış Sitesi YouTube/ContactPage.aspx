<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="ContactPage.aspx.cs" Inherits="Araba_Satış_Sitesi_YouTube.ContactPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <asp:TextBox ID="tboxName" runat="server" ToolTip="İsminizi giriniz"></asp:TextBox>
        <br />
        <br />
        <asp:TextBox ID="tboxMail" runat="server" ToolTip="Mail adresinizi giriniz"></asp:TextBox>
        <br />
        <br />
        <asp:TextBox ID="tboxMessage" runat="server" Height="249px" TextMode="MultiLine" ToolTip="Mesajınızı yazınız" Width="553px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnSend" runat="server" Height="34px" Text="Mesajı Gönder" Width="234px" OnClick="btnSend_Click" />
    </form>
</asp:Content>
