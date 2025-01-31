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
            LeRegebbiLegujjabbZene();
            LeghallgatottabbMufaj();
            Console.ReadKey();
        }

        private static void LeghallgatottabbMufaj()
        {
            List<string> Mufajlist = new List<string>();
            List<int> HallgatasSzam = new List<int>();
            foreach (var x in AdatBazisKezelo.ZenekList) {
                if (!Mufajlist.Contains(x.Mufaj))
                {
                    Mufajlist.Add(x.Mufaj);
                }
            }
            for (int i = 0; i < AdatBazisKezelo.HallgatottsagList.Count; i++) {
                HallgatasSzam[Mufajlist.IndexOf(AdatBazisKezelo.ZenekList[i].Mufaj)] += AdatBazisKezelo.HallgatottsagList[i].HallgatasSzam;
            }


        }

        private static void Vonalak()
        {
            Console.WriteLine("---------------------------------");
        }

        private static void LeRegebbiLegujjabbZene()
        {
            Zenek legregebbi = new Zenek(150,"asd","ursula","vmi",2025);
            Zenek legujjabb = new Zenek();

            foreach (var v in AdatBazisKezelo.ZenekList) {
                if (v.Kiadas < legregebbi.Kiadas)
                {
                    legregebbi = v;
                }
                if(v.Kiadas > legujjabb.Kiadas){
                    legujjabb = v;

                }
            }
            Console.WriteLine($"Legrégebben kiadott zene címe : {legregebbi.Cim} \n Kiadási éve: {legregebbi.Kiadas}");
            Console.WriteLine(" ");
            Console.WriteLine($"Legújabban kiadott zene címe : {legujjabb.Cim} \n Kiadási éve: {legujjabb.Kiadas}");
            Vonalak();
        }

        private static void LegtobbetHallgatott()
        {
            Hallgatottsag valtozo = new Hallgatottsag();
            for (int i = 0; i <AdatBazisKezelo.HallgatottsagList.Count; i++) {
                if (AdatBazisKezelo.HallgatottsagList[i].HallgatasSzam>valtozo.HallgatasSzam)
                {
                    valtozo = AdatBazisKezelo.HallgatottsagList[i];
                }
            }
            Console.WriteLine($"A legtöbbet hallgatott előadó és zenéjének információja: {AdatBazisKezelo.ZenekList[valtozo.ZeneId].ToString()}\n Hallgatottság: {valtozo.HallgatasSzam}");
            Vonalak();
        }
    }
}
