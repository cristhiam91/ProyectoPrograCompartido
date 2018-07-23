﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace PmTool.UI
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional }
            );
            routes.MapRoute(
               name: "User",
               url: "{controller}/{action}/{id}",
               defaults: new { controller = "User", action = "Index", id = UrlParameter.Optional }
           );
           routes.MapRoute(
           name: "Project",
           url: "{controller}/{action}/{id}",
           defaults: new { controller = "Project", action = "Index", id = UrlParameter.Optional }
           );
            routes.MapRoute(
          name: "DataCenter",
          url: "{controller}/{action}/{id}",
          defaults: new { controller = "DataCenter", action = "Index", id = UrlParameter.Optional }
          );
            routes.MapRoute(
          name: "Factory",
          url: "{controller}/{action}/{id}",
          defaults: new { controller = "Factory", action = "Index", id = UrlParameter.Optional }
          );

            routes.MapRoute(
          name: "Lab",
          url: "{controller}/{action}/{id}",
          defaults: new { controller = "Lab", action = "Index", id = UrlParameter.Optional }
          );
            routes.MapRoute(
          name: "Office",
          url: "{controller}/{action}/{id}",
          defaults: new { controller = "Office", action = "Index", id = UrlParameter.Optional }
          );
        }
    }
}
