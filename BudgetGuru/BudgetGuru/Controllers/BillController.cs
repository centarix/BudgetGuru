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
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult AddBill(FormCollection collection)
            //public ActionResult Create(ViewModel formData)
        {
            try
            {
                BudgetGuru.DataLayer.Bill_Item bill = new Bill_Item();
                bill.Title = collection[0] ?? string.Empty;
                bill.Description = collection[1] ?? string.Empty;
                bill.DueDate = Convert.ToDateTime(collection[2]);
                bill.Amout = Convert.ToDecimal(collection[3]);
                if (bill.addNewBill())
                {
                    //show success msg or confirmation
                }
                // TODO: Add insert logic here
                // TODO: Translate FormCollection to Bill Model DTO
                // TODO: Save billdto using data layer
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
