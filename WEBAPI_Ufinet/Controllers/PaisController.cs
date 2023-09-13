using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using WEBAPI_Ufinet.Models;
using WEBAPI_Ufinet.Data;

namespace WEBAPI_Ufinet.Controllers
{
    public class PaisController : ApiController
    {
        
        [HttpGet]
        [Route("api/Pais/ListaPaginada")]
        public IHttpActionResult ListaPaginada(int numpag, int regpag = 30)
        {
            List<Paises> paises = PaisData.Listar(numpag, regpag);

            if (paises != null)
            {
                return Ok(paises);
            }
            else
            {
                return NotFound();
            }
        }

        [HttpGet]
        [Route("api/Pais/GetPaises")]
        public Paises GetPaises(string filter)
        {
            return PaisData.Obtener(filter);
        }

    }
}