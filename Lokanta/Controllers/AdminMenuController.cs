using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Lokanta.Models;

namespace Lokanta.Controllers
{
    public class AdminMenuController : Controller
    {
        restorantDB db = new restorantDB();
        // GET: AdminMenu
        public ActionResult Index()
        {
            var menus = db.Menu.ToList();
            return View(menus);
        }

        // GET: AdminMenu/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: AdminMenu/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: AdminMenu/Create
        [HttpPost]
        public ActionResult Create(Menu menu)
        {
            if (ModelState.IsValid)
            {
                db.Menu.Add(menu);
                db.SaveChanges();
                return RedirectToAction("index");
            }
            return View(menu);
        }

        // GET: AdminMenu/Edit/5
        public ActionResult Edit(int id)
        {
            var menu = db.Menu.Where(m => m.menuID == id).SingleOrDefault();
            if (menu == null)
            {
                return Redirect("error");
            }
            return View(menu);
        }

        // POST: AdminMenu/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, Menu menu)
        {
            try
            {
                // TODO: Add update logic here
                var menus = db.Menu.Where(m => m.menuID == id).SingleOrDefault();
                menus.menuTur = menu.menuTur;
                menus.menuAd = menu.menuAd;
                menus.menuFiyat = menu.menuFiyat;
                menus.menuAciklama = menu.menuAciklama;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            catch
            {
                return View(menu);
            }
        }

        // GET: AdminMenu/Delete/5
        public ActionResult Delete(int id)
        {
            var menu = db.Menu.Where(m => m.menuID == id).SingleOrDefault();
            if (menu == null)
            {
                return Redirect("error");
            }
            return View(menu);
        }

        // POST: AdminMenu/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                var menu = db.Menu.Where(m => m.menuID == id).SingleOrDefault();
                if (menu == null)
                {
                    return Redirect("error");
                }
                db.Menu.Remove(menu);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
