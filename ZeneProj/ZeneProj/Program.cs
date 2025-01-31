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
            LegtobbetHallgatott(AdatBazisKezelo.ZenekList, AdatBazisKezelo.HallgatottsagList);
            LeRegebbiLegujjabbZene(AdatBazisKezelo.ZenekList);
            LeghallgatottabbMufaj(AdatBazisKezelo.ZenekList, AdatBazisKezelo.HallgatottsagList);
            Zenekadatai(AdatBazisKezelo.ZenekList);
            Console.ReadKey();
        }

        private static void Zenekadatai(List<Zenek> zenelista)
        {
            foreach (var v in zenelista)
            {
                Console.WriteLine(v.ToString());
            }
        }

        private static void LeghallgatottabbMufaj(List<Zenek> zenelista, List<Hallgatottsag> hallista)
        {
            List<string> Mufajlist = new List<string>();
            List<int> HallgatasSzam = new List<int>();
            foreach (var x in zenelista) {
                if (!Mufajlist.Contains(x.Mufaj))
                {
                    Mufajlist.Add(x.Mufaj);
                    HallgatasSzam.Add(0);
                }
            }
            for (int i = 0; i < hallista.Count; i++) {
                HallgatasSzam[Mufajlist.IndexOf(zenelista[i].Mufaj)] += hallista[i].HallgatasSzam;
            }
            string leghallgatottabbmufaj = Mufajlist[HallgatasSzam.IndexOf(HallgatasSzam.Max())];
            int legtobbhallgatas = HallgatasSzam.Max();
            
            Console.WriteLine($"A leghallgatottabb műfaj: {leghallgatottabbmufaj}\n Meghallgatások száma: {legtobbhallgatas}");
            Vonalak();
            

        }

        private static void Vonalak()
        {
            Console.WriteLine(" ");
            Console.WriteLine("---------------------------------");
            Console.WriteLine(" ");
        }

        private static void LeRegebbiLegujjabbZene(List<Zenek> zenelista)
        {
            Zenek legregebbi = new Zenek(150,"asd","ursula","vmi",2025);
            Zenek legujjabb = new Zenek();

            foreach (var v in zenelista) {
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

        private static void LegtobbetHallgatott(List<Zenek> zenelista, List<Hallgatottsag> hallista)
        {
            Vonalak();
            Hallgatottsag valtozo = new Hallgatottsag();
            for (int i = 0; i <hallista.Count; i++) {
                if (hallista[i].HallgatasSzam>valtozo.HallgatasSzam)
                {
                    valtozo = hallista[i];
                }
            }
            Console.WriteLine($"A legtöbbet hallgatott előadó és zenéjének információja: {zenelista[valtozo.ZeneId].ToString()}\n Hallgatottság: {valtozo.HallgatasSzam}");
            Vonalak();
        }
    }
}
