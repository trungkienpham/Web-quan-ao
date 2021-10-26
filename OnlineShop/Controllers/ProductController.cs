using Models_OnlineShop.DAO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace OnlineShop.Controllers
{
    public class ProductController : Controller
    {
        // GET: Product
        public ActionResult Index(long id, int type = 1, int PageNumber = 1, int PageSize = 9)
        {
            if (type == 1)
            {
                var ListProduct = new ProductDao().ListByProductCategory(id, PageNumber, PageSize);
                return View(ListProduct);
            }
            else if(type == 2)
            {
                var ListProduct = new ProductDao().ListByMainMenu(id, PageNumber, PageSize);
                return View(ListProduct);
            }
            else
            {
                var ListProduct = new ProductDao().ListByTag(id, PageNumber, PageSize);
                return View(ListProduct);
            }
    
            
        }
        public JsonResult ListName(string q)
        {
            var data = new ProductDao().ListName(q);
            return Json(new
            {
                data = data,
                status = true
            },JsonRequestBehavior.AllowGet); 
        }
        public ActionResult Search(string keyword, int page = 1, int pageSize = 9)
        {       
            int totalRecord = 0;
            var product = new ProductDao().Search(keyword, ref totalRecord, page, pageSize);
            //tổng sán phẩm
            ViewBag.Total = totalRecord;
            //trang được chọn
            ViewBag.Page = page;

            ViewBag.Keyword = keyword;

            int maxPage = 5;
            int totalPage = 0;

            totalPage = (int)Math.Ceiling((double)(totalRecord / pageSize));
            ViewBag.TotalPage = totalPage;
            ViewBag.MaxPage = maxPage;
            ViewBag.First = 1;
            ViewBag.Last = totalPage;
            ViewBag.Next = page + 1;
            ViewBag.Prev = page - 1;
            return View(product);
        }
    
        [ChildActionOnly]
        public ActionResult Seller()
        {
            var ListProduct = new ProductDao().ListAllPaging("", 1, 3);
            return PartialView(ListProduct);
        }
        [ChildActionOnly]
        public ActionResult ProductCategory()
        {
            var productcategory = new ProductCategoryDao().ListAll();
            return PartialView(productcategory);
        }
      
        [ChildActionOnly]
        public ActionResult Tags()
        {

            return PartialView();
        }
       
        public ActionResult Detail(long id)
        {
            var product = new ProductDao().ViewDetail(id);
            ViewBag.RelatedProduct = new ProductDao().ListRelatedProduct(id,3);
            return View(product);
        }
    }
}