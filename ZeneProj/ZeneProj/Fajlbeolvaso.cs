using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;
using System.Threading.Tasks;

namespace ZeneProj
{
    class Fajlbeolvaso
    {
        public static List<Zenek> Beolvasottak = new List<Zenek>();
        public static void Beolvasas()
        {
            try
            {
                string[] beolvasoTomb = File.ReadAllLines("zenek.txt");
                for (int i = 0; i < beolvasoTomb.Length; i++)
                {

                    int id = Convert.ToInt32(beolvasoTomb[i].Split(',')[0]);
                    string cim = beolvasoTomb[i].Split(',')[1];
                    string szerzo = beolvasoTomb[i].Split(',')[2];
                    string mufaj= beolvasoTomb[i].Split(',')[3];
                    int kiadas = Convert.ToInt32(beolvasoTomb[i].Split(',')[4]);

                    Zenek adat = new Zenek(id,cim,szerzo,mufaj,kiadas);
                    Beolvasottak.Add(adat);
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Fájl nem létezik!");
            }
        }
    }
}
