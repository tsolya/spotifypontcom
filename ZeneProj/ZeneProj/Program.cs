using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ZeneProj
{
    internal class Program
    {
        
        private static void Main(string[] args) {
            AdatBazisKezelo.KapcsolodasAdatbazishoz();
            AdatBazisKezelo.SelectFromTable("zenek");
            AdatBazisKezelo.HallgatottsagSelect("hallgatottsagtabla");
            Fajlbeolvaso.Beolvasas();
            AdatBazisKezelo.UjZene();
            LegtobbetHallgatott();
        }

        private static void LegtobbetHallgatott()
        {
            int valtozo = 0;
            for (int i = 0; i <AdatBazisKezelo.HallgatottsagList.Count; i++) { 
                
            }

        }
    }
}
