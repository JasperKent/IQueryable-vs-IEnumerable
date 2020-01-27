using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using QueryableVsEnumerable.Models;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;

namespace QueryableVsEnumerable.Controllers
{
    public class HomeController : Controller
    {
        private readonly Repository _repository;

        public HomeController(Repository repository)
        {
            _repository = repository;
        }

        public IActionResult Older()
        {
            var older = _repository.Older(35);

            List<string> result = new List<string>();

            foreach(var p in older)
            {
                result.Add($"{p.Name} ({p.Age})");
            }

            return View(result);
        }

        public IActionResult Count()
        {
            var older = _repository.Older(35);

            // This is where the problem occurs. IQueryable sends a COUNT query to the database engine
            // IEnunmerable pulls all the rows in to memory and counts them
            int count = older.Count();

            return View(count);
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
