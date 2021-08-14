using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;

namespace irenesalon.appointment
{
    public class WebServer
    {

        #region " Connection String "

        string ConnectionString => "SERVER=CADALZOLC\\SQLEXPRESS19;DATABASE=thesis_booking;UID=sa;PWD=P@ssw0rd;Persist Security Info=True";

        #endregion

        #region " Is Connected "

        public bool IsConnected()
        {
            try
            {
                var Con = new SqlConnection(ConnectionString);
                Con.Open();
                Con.Close();
                return true;
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                return false;
            }
        }

        #endregion

        #region " Get Data "

        public DataTable GetData(string Query)
        {
            try
            {
                using (var Con = new SqlConnection(ConnectionString))
                {
                    Con.Open();
                    var DA = new DataTable();
                    var DS = new SqlDataAdapter(Query, Con);
                    DS.Fill(DA);
                    return DA;
                }
               
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                return null;
            }
        }

        #endregion


    }
}