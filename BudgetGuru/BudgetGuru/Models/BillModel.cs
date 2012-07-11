using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.ComponentModel;
using System.Data.Linq.Mapping;
using System.Data.Linq;

namespace BudgetGuru.Models

{
    [Table(Name="Bill_Items")]
    public class BillModel
    {
            [Column(IsPrimaryKey=true)]
            public int billId { get; set; }
            [DisplayName("Bill Title")]
            [Column]
            public string billTitle { get; set; }
            [DisplayName("Bill Description")]
            [Column]
            public string billDescription { get; set; }
            [DisplayName("Bill Due Date")]
            [Column]
            public string billDue { get; set; }
            [DisplayName("Bill Amount")]
            [Column]
            public decimal billAmt { get; set; }

            public void establishConnection()
            {
                // DataContext takes a connection string 
                DataContext db = new DataContext(@"C:\BudgetGuru.mdf");
                // Get a typed table to run queries
                Table<BillModel> Bill = db.GetTable<BillModel>();
                // Query for customers from London
                var q =
                   from c in Bill
                   where c.billTitle == "123"
                   select c;
                foreach (var bill in q)
                    Console.WriteLine("id = {0}, City = {1}", bill.billTitle, bill.billAmt);

            }
    }
}
