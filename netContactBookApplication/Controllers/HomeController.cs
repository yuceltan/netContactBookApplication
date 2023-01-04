﻿using netContactBookApplication.Models;
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
        public ActionResult Register()
        {

            return View();
        }
        [HttpPost]
        public ActionResult Register(ContactDB cot)
        {
            if (ModelState.IsValid)
            {
                yuceltandbEntities1 db = new yuceltandbEntities1();
                db.ContactDBs.Add(cot);
                db.SaveChanges();
            }

            return View();
        }
    }
}