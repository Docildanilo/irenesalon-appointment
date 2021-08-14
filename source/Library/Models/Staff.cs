using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace irenesalon.appointment
{
    public class Staff
    {
        public string ID { get; set; } = "";
        public string Name { get; set; } = "";
        public string Mobile { get; set; } = "";
        public string Email { get; set; } = "";
        public List<Irene_Services> Services { get; set; } = new List<Irene_Services>();
    }

}
