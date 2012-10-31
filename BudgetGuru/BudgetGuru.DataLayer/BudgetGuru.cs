using System.Collections;
using System.Linq;
using System.Collections.Generic;
using BudgetGuru;
using System;
namespace BudgetGuru.DataLayer
{
    partial class Bill_Item
    {
        
        public void doStuff()
        {
            DataClasses1DataContext db = new DataClasses1DataContext();
            //Bill_Item item = db.Bill_Items.Single(p => p.Title == "123") ?? null;

            //item.Description = "This was changed! Yay";
            //item._Title = "No work";

            db.SubmitChanges(); 
            List<Bill_Item> billList = getAllBills();

        }

        public List<Bill_Item> getAllBills()
        {
            DataClasses1DataContext db = new DataClasses1DataContext();
            return db.Bill_Items.ToList();
        }

        public bool editBill(int id)
        {
            DataClasses1DataContext db = new DataClasses1DataContext();
            //Bill_Item item = db.Bill_Items.Single(p => p.Id == id) ?? return false;
            //Needs work

            return false;
        }

        public bool addNewBill()
        {
            
            DataClasses1DataContext db = new DataClasses1DataContext();
            db.Bill_Items.InsertOnSubmit(this);
            try
            {
                db.SubmitChanges();
            }
            catch (Exception ex)
            {
                Console.Write(ex);
            }
            //BillModel
            //Bill_Item item = new Bill_Item();
            return false;
        }

        public bool updateBill(int billId)
        {
            //DataClasses1DataContext db = new DataClasses1DataContext();
            
            try
            {
                //db.SubmitChanges();
                return true;
            }
            catch (Exception ex)
            {
                Console.Write(ex);
            }
            return false;
        }

        public bool deleteBill(int billId , DataClasses1DataContext db)
        {
            //DataClasses1DataContext db = new DataClasses1DataContext();
            var deleteB = getBillById(billId);
            db.Bill_Items.DeleteOnSubmit(deleteB);
            
            try
            {
                db.SubmitChanges();
            }catch (Exception e)
            {
                Console.Write(e);
                return false;
            }
            return true;
        }

        public Bill_Item getBillById(int id)
        {
            DataClasses1DataContext db = new DataClasses1DataContext();
            return db.Bill_Items.Single<Bill_Item>(p => p.Id == id);
        }
    }
}
