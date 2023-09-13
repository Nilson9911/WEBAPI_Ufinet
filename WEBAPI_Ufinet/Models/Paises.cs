using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WEBAPI_Ufinet.Models
{
    public class Paises
    {
        public int Cod_Pais { get; set; }
        public string Nombre { get; set; }
        public string Cod_ISO { get; set; }
        public int Cod_Restaurante { get; set; }
        public string Nom_Restaurante { get; set; }
        public int Cod_Hotel { get; set; }
        public string Nom_Hotel { get; set; }
    }
}