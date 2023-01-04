using netContactBookApplication.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace netContactBookApplication.Controllers
{
    public class HomeController : Controller
    {
         // GET: Home
        [HttpGet]
        public ActionResult Index()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Index(ContactRecord cot)
        {
            if (ModelState.IsValid)
            {
                yuceltandbEntities db = new yuceltandbEntities();
                db.ContactRecords.Add(cot);
                db.SaveChanges();
            }
            return View();
        }
    }
}