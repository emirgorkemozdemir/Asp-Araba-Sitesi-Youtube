<%@ Page Title="" Language="C#" MasterPageFile="~/AdminLayout.Master" AutoEventWireup="true" CodeBehind="AdminAddCars.aspx.cs" Inherits="Araba_Satış_Sitesi_YouTube.AdminAddCars" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                  <table class="nav-justified">
            <tr>
                <td class="modal-lg" style="width: 165px">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="modal-lg" style="width: 165px">Araba modeli</td>
                <td>
                    <asp:TextBox ID="tboxModel" runat="server" Width="160px" ReadOnly="True" Text='<%# Eval("CarModel") %>'></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-lg" style="width: 165px">Araba fotoğrafı</td>
                <td>
                    <asp:TextBox ID="tboxPhoto" runat="server" Width="160px" ReadOnly="True" Text='<%# Eval("CarPhoto") %>'></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-lg" style="width: 165px; height: 20px">Araba yakıt tipi</td>
                <td style="height: 20px">
                    <asp:TextBox ID="tboxFuel" runat="server" Width="160px" ReadOnly="True" Text='<%# Eval("CarFuelType") %>'></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-lg" style="width: 165px">Açıklama </td>
                <td>
                    <asp:TextBox ID="tboxDescription" runat="server" Height="117px" TextMode="MultiLine" Width="160px" ReadOnly="True" Text='<%# Eval("CarDescription") %>'></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-lg" style="width: 165px">Araç satıcısı</td>
                <td>
                    <asp:TextBox ID="tboxSeller" runat="server" Width="160px" ReadOnly="True" Text='<%# Eval("CarSeller") %>'></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-lg" style="width: 165px">İletişim telefon numarası:</td>
                <td>
                    <asp:TextBox ID="tboxContact" runat="server" Width="160px" ReadOnly="True" Text='<%# Eval("CarContact") %>'></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-lg" style="width: 165px; height: 22px">Araç Fiyatı</td>
                <td style="height: 22px">
                    <asp:TextBox ID="tboxPrice" runat="server" Width="160px" ReadOnly="True" Text='<%# Eval("CarPrice") %>'></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-lg" style="width: 165px">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
                      <tr>
                          <td class="modal-lg" style="width: 165px">&nbsp;</td>
                          <td>
                          <a href="ApproveCars.aspx?carid=<%# Eval("CarID") %>"><div class="btn btn-danger">Onayla</div></a> 
                          </td>
                      </tr>
                      <tr>
                          <td class="modal-lg" style="width: 165px">&nbsp;</td>
                          <td>&nbsp;</td>
                      </tr>
                      <tr>
                          <td class="modal-lg" style="width: 165px">&nbsp;</td>
                          <td>&nbsp;</td>
                      </tr>
                      <tr>
                          <td class="modal-lg" style="width: 165px">&nbsp;</td>
                          <td>&nbsp;</td>
                      </tr>
                      <tr>
                          <td class="modal-lg" style="width: 165px">&nbsp;</td>
                          <td>&nbsp;</td>
                      </tr>
                      <tr>
                          <td class="modal-lg" style="width: 165px; border-bottom-style: solid; border-bottom-width: medium;">&nbsp;</td>
                          <td style="border-bottom-style: solid; border-bottom-width: medium">&nbsp;</td>
                      </tr>
        </table>
            </ItemTemplate>
        </asp:DataList>
    </form>
</asp:Content>
