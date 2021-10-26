﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace OnlineShop
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");
            // BotDetect requests must not be routed
            routes.IgnoreRoute("{*botdetect}",
             new { botdetect = @"(.*)BotDetectCaptcha\.ashx" });

            routes.MapRoute(
                 name: "Payment",
                 url: "thanh-toan",
                 defaults: new { controller = "Cart", action = "Payment", id = UrlParameter.Optional },
                 namespaces: new[] { "OnlineShop.Controllers" }
            );
            routes.MapRoute(
                 name: "AddCart",
                 url: "them-gio-hang",
                 defaults: new { controller = "Cart", action = "AddItem", id = UrlParameter.Optional },
                 namespaces: new[] { "OnlineShop.Controllers" }
            );
            routes.MapRoute(
               name: "Cart",
               url: "gio-hang",
               defaults: new { controller = "Cart", action = "Index", id = UrlParameter.Optional },
               namespaces: new[] { "OnlineShop.Controllers" }
            );
            routes.MapRoute(
                name: "Search",
                url: "tim-kiem",
                defaults: new { controller = "Product", action = "Search", id = UrlParameter.Optional },
                namespaces: new[] { "OnlineShop.Controllers" }
            );
            routes.MapRoute(
                name: "Detail",
                url: "chi-tiet/{metatiltle}-{id}",
                defaults: new { controller = "Product", action = "Detail", id = UrlParameter.Optional },
                namespaces: new[] { "OnlineShop.Controllers" }
            );
            routes.MapRoute(
                name: "ProductMainMenu",
                url: "san-pham/{link}-{id}-{type}",
                defaults: new { controller = "Product", action = "Index", id = UrlParameter.Optional },
                namespaces: new[] { "OnlineShop.Controllers" }
            );
            routes.MapRoute(
               name: "ProductCategory",
               url: "san-pham/{metatiltle}-{id}-{type}",
               defaults: new { controller = "Product", action = "Index", id = UrlParameter.Optional },
               namespaces: new[] { "OnlineShop.Controllers" }
           );
            routes.MapRoute(
               name: "Contact",
               url: "lien-he",
               defaults: new { controller = "Contact", action = "Index", id = UrlParameter.Optional },
               namespaces: new[] { "OnlineShop.Controllers" }
            );
            routes.MapRoute(
               name: "Home",
               url: "Trang-Chu",
               defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional },
               namespaces: new[] { "OnlineShop.Controllers" }
            );
            routes.MapRoute(
               name: "Tag",
               url: "nhan/{name}-{id}-{type}",
               defaults: new { controller = "Product", action = "Index", id = UrlParameter.Optional },
               namespaces: new[] { "OnlineShop.Controllers" }
            );
            routes.MapRoute(
           name: "Register",
           url: "dang-ky",
           defaults: new { controller = "User", action = "Register", id = UrlParameter.Optional },
           namespaces: new[] { "OnlineShop.Controllers" }
           );
            routes.MapRoute(
              name: "Login",
              url: "dang-nhap",
              defaults: new { controller = "User", action = "Login", id = UrlParameter.Optional },
              namespaces: new[] { "OnlineShop.Controllers" }
           );
            routes.MapRoute(
              name: "LoginFacebook",
              url: "dang-nhap-facebook",
              defaults: new { controller = "User", action = "loginFacebook", id = UrlParameter.Optional },
              namespaces: new[] { "OnlineShop.Controllers" }
            );
            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional },
                namespaces: new[] { "OnlineShop.Controllers" }
            );

           
        }
    }
}
