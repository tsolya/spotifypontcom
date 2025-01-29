using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ZeneProj
{
    internal class Hallgatottsag
    {
        public int Id {  get; set; }
        public int HallgatasSzam { get; set; }
        public int ZeneId { get; set; }

        public Hallgatottsag() { }

        public Hallgatottsag(int id, int hallgatasSzam, int zeneId)
        {
            Id = id;
            HallgatasSzam = hallgatasSzam;
            ZeneId = zeneId;
        }
    }
}
