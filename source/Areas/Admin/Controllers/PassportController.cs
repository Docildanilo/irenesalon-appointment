using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace irenesalon.appointment.Areas.Admin.Controllers
{
    [Area("Admin")]
    public class PassportController : Controller
    {
        public IActionResult Login()
        {
            return View();
        }
    }
}
