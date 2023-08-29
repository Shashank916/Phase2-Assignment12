using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebAppMVC.Models;

namespace WebAppMVC.Controllers
{
    public class EmployeeController : Controller
    {
        // GET: Employee
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Display()
        {
            List<Employee> listEmployee = new List<Employee>()
            {
                new Employee()
                {
                    ID =1, Name="Sam",Designation="Manager",Salary=98000.50,DOJ=new DateTime(day:20,month:12, year:2010)
                },
                new Employee()
                {
                    ID =2, Name="Nitesh",Designation="Developer",Salary=75000.75,DOJ=new DateTime(day:25,month:10, year:2013)
                },
                new Employee()
                {
                    ID =3, Name="Rupesh",Designation="Developer",Salary=76000.75,DOJ=new DateTime(day:30,month:12, year:2012)
                },
                new Employee()
                {
                    ID =4, Name="Gauri",Designation="HR",Salary=45000.75,DOJ=new DateTime(day:28,month:03, year:2019)
                },
                new Employee()
                {
                    ID =5, Name="Babita",Designation="Tester",Salary=55000.55,DOJ=new DateTime(day:24,month:01, year:2022)
                }
            };
            return View(listEmployee);
        }
    }
}