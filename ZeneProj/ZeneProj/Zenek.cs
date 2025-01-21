using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ZeneProj
{
    class Zenek
    {
        private int Id;
        private string cim;
        private string szerzo;
        private int kiadas;
        private string mufaj;
        

        public string Cim
        {
            get => cim;
            set
            {
                if (string.IsNullOrWhiteSpace(value))
                    throw new ArgumentException("A cím nem lehet üres!");
                cim = value;
            }
        }

        public string Szerzo
        {
            get => szerzo;
            set
            {
                if (string.IsNullOrWhiteSpace(value))
                    throw new ArgumentException("A szerző nem lehet üres!");
                szerzo = value;
            }
        }

        public int Kiadas
        {
            get => kiadas;
            set
            {
                if (value < 1500 || value > DateTime.Now.Year)
                    throw new ArgumentException("Helytelen Dátum");
                kiadas = value;
            }
        }

        public string Mufaj
        {
            get => mufaj;
            set
            {
                if (string.IsNullOrWhiteSpace(value))
                    throw new ArgumentException("A műfaj nem lehet üres!");
                mufaj = value;
            }
        }

        public Zenek() { }

        public Zenek(int id,string cim, string szerzo, string mufaj, int kiadas)
        {
            Id = id;
            Cim = cim;
            Szerzo = szerzo;
            Kiadas = kiadas;
            Mufaj = mufaj;
        }
        public override string ToString()
        {
            return $"{Cim} : {Szerzo}, {Kiadas} ({Mufaj})";
        }
    }
}
