using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BudgetGuru.Controllers
{
    [HandleError]
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            ViewData["Message"] = "Welcome to BudgetGuru!";

            return View();
        }

        public ActionResult About()
        {
            return View();
        }

        public ActionResult Bill()
        {
            return View();
        }

        public ActionResult BillView()
        {
            return View();
        }
    }
}
