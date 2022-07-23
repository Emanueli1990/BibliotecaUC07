using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using Biblioteca.Models;
using Microsoft.AspNetCore.Http;

namespace Biblioteca.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;

        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }

        public IActionResult Index()
        {
            Autenticacao.CheckLogin(this);
            return View();
        }

        public IActionResult Login()
        {
            return View();
        }

        [HttpPost]
        public IActionResult Login(string login, string senha)
        {
            UsuarioService usuarioService = new UsuarioService();
            int type = 0;
            bool Islogin = false;

            (Islogin,type) = usuarioService.Login(login , senha);

            if(Islogin)
            {
                if (type == 1)
                {
                    HttpContext.Session.SetString("user", "admin");    
                    return RedirectToAction("Admin");
                }
                else
                {
                  HttpContext.Session.SetString("user", login);
                    return RedirectToAction("Index");  
                }
            }
            return RedirectToAction("Login");    
        }

        public IActionResult Privacy()
        {
            return View();
        }

        public IActionResult Admin()
        {
            return View();
        }
    }
}
