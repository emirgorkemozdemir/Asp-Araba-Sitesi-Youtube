<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="AddCars.aspx.cs" Inherits="Araba_Satış_Sitesi_YouTube.AddCars" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <table class="nav-justified">
            <tr>
                <td class="modal-lg" style="width: 165px">Araba markasını seçiniz:</td>
                <td>
                    <asp:DropDownList ID="combobox" runat="server" Height="16px" Width="169px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="modal-lg" style="width: 165px">Araba modelini yazınız:</td>
                <td>
                    <asp:TextBox ID="tboxModel" runat="server" Width="160px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-lg" style="width: 165px">Araba fotoğraf linki:</td>
                <td>
                    <asp:TextBox ID="tboxPhoto" runat="server" Width="160px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-lg" style="width: 165px; height: 20px">Araba yakıt tipi giriniz:</td>
                <td style="height: 20px">
                    <asp:TextBox ID="tboxFuel" runat="server" Width="160px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-lg" style="width: 165px">Açıklama giriniz:</td>
                <td>
                    <asp:TextBox ID="tboxDescription" runat="server" Height="117px" TextMode="MultiLine" Width="160px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-lg" style="width: 165px">Araç satıcısı</td>
                <td>
                    <asp:TextBox ID="tboxSeller" runat="server" Width="160px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-lg" style="width: 165px">İİletişim telefon numarası:</td>
                <td>
                    <asp:TextBox ID="tboxContact" runat="server" Width="160px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-lg" style="width: 165px; height: 22px">Araç Fiyatı</td>
                <td style="height: 22px">
                    <asp:TextBox ID="tboxPrice" runat="server" Width="160px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-lg" style="width: 165px">&nbsp;</td>
                <td>
                    <asp:Button ID="btnSend" runat="server" Height="57px" OnClick="btnSend_Click" Text="İlanı Gönder" Width="167px" />
                </td>
            </tr>
        </table>
    </form>
</asp:Content>
