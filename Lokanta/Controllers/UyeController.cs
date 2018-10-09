using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Lokanta.Models;
using System.Web.Helpers;

namespace Lokanta.Controllers
{
    public class UyeController : Controller
    {
        restorantDB db = new restorantDB();
        // GET: Uye
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Login()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Login(Kullanici uye,string kullaniciSifre)
        {
            var kripto = Crypto.Hash(kullaniciSifre, "SHA256");          
            var login = db.Kullanici.Where(u => u.kullaniciAd == uye.kullaniciAd).SingleOrDefault();
            if (login.kullaniciAd == uye.kullaniciAd && login.kullaniciSifre == kripto)
            {
                Session["kullaniciID"] = login.kullaniciID;
                Session["kullaniciAd"] = login.kullaniciAd;
                return RedirectToAction("Index", "Admin");
            }
            else
            {
                return View();
            }
        }
        public ActionResult Logout()
        {
            Session["kullaniciID"] = null;
            Session["kullaniciAd"] = null;
            Session.Abandon();
            return RedirectToAction("Index", "Home");
        }
    }
}