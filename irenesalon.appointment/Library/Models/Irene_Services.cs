using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace irenesalon.appointment
{
    public class Irene_Services
    {
        public string ID { get; set; } = "";
        public string Name { get; set; } = "";
        public string Price { get; set; } = "";
        public List<Staff> Staffs = new List<Staff>();
    }

    public class List_Services
    {
        public List<Irene_Services> GetServices = new List<Irene_Services>();
    }
}
