using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace irenesalon.appointment
{
    public class Page_Home
    {

        public IEnumerable<Irene_Services> Services = new List<Irene_Services>();
        public string Service_ID { get; set; } = "";
        public string Appointment_Date { get; set; } = "";
        public string Name { get; set; } = "";
        public string Mobile_No { get; set; } = "";
    }
}
