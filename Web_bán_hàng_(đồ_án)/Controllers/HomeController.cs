﻿    using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Web_bán_hàng__đồ_án_.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult trangchu()
        {
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
        public ActionResult MenWatches()
        {

            return View();
        }
        public ActionResult WomenWatches()
        {

            return View();
        }
        public ActionResult CoupleWatches()
        {

            return View();
        }
        public ActionResult Banner()
        {
            return View();
        }
    }
}