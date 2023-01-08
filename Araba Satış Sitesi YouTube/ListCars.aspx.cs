using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using Araba_Satış_Sitesi_YouTube.Classes;

namespace Araba_Satış_Sitesi_YouTube
{
    public partial class ListCars : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand commandList = new SqlCommand("Select CarID,CarModel,CarBrandID,CarFuelType,CarDescription,CarContact,CarSeller,CarPhoto,CarPrice,CarConfirmation,BrandID,BrandName from TableCar inner join TableBrand on TableCar.CarBrandID=TableBrand.BrandID where CarConfirmation=@pcon",SqlConnectionClass.connection);

            SqlConnectionClass.CheckConnection();

            commandList.Parameters.AddWithValue("@pcon",true);

            SqlDataReader dr = commandList.ExecuteReader();

            DataList1.DataSource =dr;

            DataList1.DataBind();

            dr.Close();

        }
    }
}