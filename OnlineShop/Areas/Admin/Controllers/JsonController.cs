using Models_OnlineShop.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace OnlineShop.Areas.Admin.Controllers
{
    public class JsonController : Controller
    {
        OnlineShopDbContext db = new OnlineShopDbContext();
        // GET: Admin/JSon
        public ActionResult Index()
        {
            return View();
        }
        public JsonResult loadData()
        {
            IQueryable<User> model = db.Users;  
            return Json(model,JsonRequestBehavior.AllowGet);
        }
    }
}