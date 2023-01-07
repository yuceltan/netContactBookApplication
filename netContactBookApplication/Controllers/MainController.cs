using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Caching;
using System.Web.Mvc;

namespace netContactBookApplication.Controllers
{
    public class MainController : Controller
    {
        // GET: Main
     
        public ActionResult Index()
        {
            return View();
        }

       
        
    }

    
}