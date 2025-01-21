using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ZeneProj
{
    class AdatBazisKezelo
    {
        private static string server = "localhost";
        private static string database = "projektdb";
        private static string user = "root";
        private static string password = "";

        private static string connectionString = $"Server={server};Database={database};User ID={user};Password={password};";
        public static MySqlConnection connection = new MySqlConnection(connectionString);

        public static List<Zenek> ZenekList = new List<Zenek>();
        public static void KapcsolodasAdatbazishoz()
        {
            try
            {
                connection.Open();
                Console.WriteLine("Kapcsolat sikeresen megnyitva.");
            }
            catch (Exception ex)
            {
                Console.WriteLine("Hiba a kapcsolat megnyitásakor: " + ex.Message);
            }
        }
        public static void SelectFromTable(string tableName)
        {


            using (MySqlCommand command = new MySqlCommand($"select * from {tableName}", connection))
            {
                ZenekList.Clear();
                using (MySqlDataReader mySqlDataReader = command.ExecuteReader())
                {
                    while (mySqlDataReader.Read())
                    {
                        Zenek zenekTemp = new Zenek(Convert.ToInt32(mySqlDataReader[0]),
                                                         Convert.ToString(mySqlDataReader[1]),
                                                         Convert.ToString(mySqlDataReader[2]),
                                                         Convert.ToString(mySqlDataReader[3]),
                                                         Convert.ToInt32(mySqlDataReader[4]));
                        ZenekList.Add(zenekTemp);
                    }
                }
            }
        }
        public static void UjZene()
        {
            string ujCim = Fajlbeolvaso.Beolvasottak[0].Cim;
            string ujSzerzo = Fajlbeolvaso.Beolvasottak[0].Szerzo;
            string ujMufaj = Fajlbeolvaso.Beolvasottak[0].Mufaj;
            int ujKiadas = Fajlbeolvaso.Beolvasottak[0].Kiadas;


            try
            {
                using (MySqlCommand commandInsert = new MySqlCommand($"insert into zenek (cim, szerzo, mufaj, kiadas) values (@cim, @szerzo, @mufaj, @kiadas)", connection))
                {
                    //Paraméterként adjuk meg az utasítás értékeit.
                    commandInsert.Parameters.AddWithValue("@cim", ujCim);
                    commandInsert.Parameters.AddWithValue("@szerzo", ujSzerzo);
                    commandInsert.Parameters.AddWithValue("@mufaj", ujMufaj);
                    commandInsert.Parameters.AddWithValue("@kiadas", ujKiadas);
                    //parancs végrehajtása:
                    commandInsert.ExecuteNonQuery();

                    Console.WriteLine("Sikeres INSERT!");

                    //Lista újratöltés...
                    SelectFromTable("zenek");
                }
            }
            catch (MySqlException mySqlError)
            {
                Console.WriteLine("Sikertelen INSERT");
                Console.WriteLine(mySqlError);
            }
            catch (Exception error)
            {
                Console.WriteLine("Sikertelen INSERT");
                Console.WriteLine(error);
            }
        }
    }
}
