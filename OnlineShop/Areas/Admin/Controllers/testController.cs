using Models_OnlineShop.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace OnlineShop.Areas.Admin.Controllers
{
    public class testController : Controller
    {
        // GET: Admin/tesr
        OnlineShopDbContext db = new OnlineShopDbContext();
       public ActionResult Index()
        {
            return View(db.Users.ToList());
        }

        public ActionResult GetSearchRecord(string SearchText="")
        {
            IQueryable<User> list = db.Users;

            if(!string.IsNullOrEmpty(SearchText))
             list = list.Where(x => x.UserName.Contains(SearchText) ||x.Name.Contains(SearchText));
            return PartialView("~/Areas/Admin/Views/Shared/_SearchPartial.cshtml",list.ToList());
        }





    }
}