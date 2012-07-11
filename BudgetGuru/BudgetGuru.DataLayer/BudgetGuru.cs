using System.Collections;
using System.Linq;
using System.Collections.Generic;
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
    }
}
