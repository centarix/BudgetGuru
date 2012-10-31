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

        public ActionResult Index2()
        {
            //BudgetGuru.DataLayer.Bill_Item b = new Bill_Item();
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

        public ActionResult AddBill()
        {
            return View();
        }

        //
        // POST: /Bill/Create

        [HttpPost]
        //[AcceptVerbs(HttpVerbs.Post)]
        public ActionResult AddBill(BillModel model)
            //public ActionResult Create(ViewModel formData)
        {
            try
            {
                BudgetGuru.DataLayer.Bill_Item bill = new Bill_Item();
                bill.Title = model.billTitle ?? string.Empty;
                bill.Description = model.billDescription ?? string.Empty;
                bill.DueDate = Convert.ToDateTime(model.datepicker);
                bill.Amout = Convert.ToDecimal(model.billAmt);
                bill.addNewBill();

                //if (bill.addNewBill())
                //{
                //    //show success msg or confirmation
                //}
                // TODO: Add insert logic here
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
        [HttpGet]
        public ActionResult Edit(int id, BillModel model)
        {
            //BudgetGuru.DataLayer.Bill_Item bill = new Bill_Item();
            var bill = new Bill_Item().getBillById(id);
            model.billId = bill.Id;
            model.billAmt = Convert.ToDecimal(bill.Amout);
            model.billDescription = bill.Description;
            model.billTitle = bill.Title;
            model.datepicker = Convert.ToString(bill.DueDate);

            //BUILD THIS
            return View(model);
        }

        //
        // POST: /Bill/Edit/5

        [HttpPost]
        public ActionResult Edit(BillModel model)
        {
            try
            {
                DataClasses1DataContext db = new DataClasses1DataContext();
                BudgetGuru.DataLayer.Bill_Item bill = new Bill_Item();
                Bill_Item item = db.Bill_Items.Single(p => p.Id == model.billId); //Load by primary key. Ideal way to update using Linq-SQL
                //bill.Id = model.billId;
                item.Title = model.billTitle ?? string.Empty;
                item.Description = model.billDescription ?? string.Empty;
                item.DueDate = Convert.ToDateTime(model.datepicker);
                item.Amout = Convert.ToDecimal(model.billAmt);
                db.SubmitChanges();
                //bill.updateBill(model.billId);
                return RedirectToAction("Index");
            }
            catch (Exception e)
            {
                return View();
            }
        }

        //
        // GET: /Bill/Delete/5
 
        public ActionResult Delete(int id)
        {
            try
            {
                DataClasses1DataContext db = new DataClasses1DataContext();
                Bill_Item bill = db.Bill_Items.Single(p => p.Id == id);
                db.Bill_Items.DeleteOnSubmit(bill);
                db.SubmitChanges();
                return RedirectToAction("Index");
            }
            catch (Exception e)
            {
                Console.Write(e.StackTrace);
                return View("Index"); //TODO: Return Error view
            }
        }

        //
        // POST: /Bill/Delete/5

        [HttpPost]
        public ActionResult Delete(int id, BillModel model)
        {
            try
            {
                Bill_Item bill = new Bill_Item();
                //bill.deleteBill(id, d);
                return RedirectToAction("Index");
            }
            catch
            {
                return View("Index");
            }
        }
    }
}
