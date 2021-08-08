using irenesalon.appointment.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;

namespace irenesalon.appointment.Controllers
{
    public class HomeController : Controller
    {

        #region  " Index "

        public IActionResult Index()
        {
            var Model = new Page_Home();
            var DT = new WebServer().GetData("SELECT * FROM Services");

            if (DT != null)
            {
                //LAMBDA
                Model.Services = DT.AsEnumerable().Select(Row => new Irene_Services()
                {
                    ID = Row["PK_ID"].ToString(),
                    Name = Row["Name"].ToString(),
                    Price = Row["Price"].ToString()
                }).ToList();
            }


            return View(Model);
        }

        #endregion

        #region " Services "

        public IActionResult Services()
        {

            var DT = new WebServer().GetData("SELECT * FROM Services");

            if (DT == null) return NotFound();
            if (DT.Rows.Count.Equals(0)) return NotFound();

            var Model = new List_Services();

            foreach (var Row in DT.AsEnumerable())
            {
                Model.GetServices.Add(new Irene_Services() { ID = Row["PK_ID"].ToString(), Name = Row["Name"].ToString(), Price = Row["Price"].ToString() });
            }
            return View("Booking/Services", Model);
        }

        public IActionResult ServicesInfo(string id)
        {

            var DT = new WebServer().GetData(string.Format("SELECT * FROM VW_Staff_Services WHERE Service_ID = {0}", id));

            if (DT == null) return NotFound();
            if (DT.Rows.Count.Equals(0)) return NotFound();


            var DT_Ser = new WebServer().GetData(string.Format("SELECT TOP 1 * FROM Services WHERe PK_ID = {0}", id));

            if (DT_Ser == null) return NotFound();
            if (DT_Ser.Rows.Count.Equals(0)) return NotFound();

            var Model = new Irene_Services();
            Model.ID = DT_Ser.Rows[0]["PK_ID"].ToString();
            Model.Name = DT_Ser.Rows[0]["Name"].ToString();
            Model.Price = DT_Ser.Rows[0]["Price"].ToString();

            foreach (var Row in DT.AsEnumerable())
            {
                Model.Staffs.Add(new Staff() { ID = Row["PK_ID"].ToString(), Name = Row["Staff"].ToString() });
            }

            return View("Booking/ServicesInfo", Model);
        }

        #endregion

        #region " Appointment "

        [HttpPost]
        public IActionResult SetAppointment(Page_Home Model)
        {
            var DisplayModel = new Appointment();
            DisplayModel.Service_ID = Model.Service_ID;
            DisplayModel.Date = Model.Appointment_Date;

            return View("Appointment", DisplayModel);
        }

        #endregion

    }
}
