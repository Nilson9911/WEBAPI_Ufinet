﻿using System.Web;
using System.Web.Mvc;

namespace WEBAPI_Ufinet
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}
