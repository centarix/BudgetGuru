using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using BudgetGuru.Models;
using BudgetGuru.DataLayer;

namespace BudgetGuru.Controllers
{
    public class BillController : Controller
    {
        //
        // GET: /Bill/

        public ActionResult Index()
        {

            BudgetGuru.DataLayer.Bill_Item b = new Bill_Item();
            b.doStuff();
            //BillModel b = new BillModel();
            //b.establishConnection();
            return View();
        }

        //
        // GET: /Bill/Details/5

        public ActionResult BillDetails(int id)
        {
            return View();
        }

        //
        // GET: /Bill/Create

        public ActionResult Create()
        {
        //    BillModel b = new BillModel();
        //    b.establishConnection();
            return View();
        } 

        //
        // POST: /Bill/Create

        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            try
            {
                // TODO: Add insert logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
        
        //
        // GET: /Bill/Edit/5
 
        public ActionResult Edit(int id)
        {
            return View();
        }

        //
        // POST: /Bill/Edit/5

        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here
                
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        //
        // GET: /Bill/Delete/5
 
        public ActionResult Delete(int id)
        {
            return View();
        }

        //
        // POST: /Bill/Delete/5

        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here
 
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
