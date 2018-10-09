using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Lokanta.Models;

namespace Lokanta.Controllers
{
    public class HomeController : Controller
    {
        restorantDB db = new restorantDB();
        // GET: Home
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Onerilenler()
        {
            return View();
        }
        public ActionResult Menu()
        {
            return View(db.Menu.ToList().Take(10));
        }
        public ActionResult Eventler()
        {
            return View(db.Event.ToList());
        }
    }
}