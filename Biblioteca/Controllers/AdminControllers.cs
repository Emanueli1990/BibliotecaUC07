using Biblioteca.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Http;
using System;

namespace Biblioteca.Controllers
{
    
    public class AdminController : Controller
    {
        UsuarioService service = new UsuarioService();
        public void Inserir(usuarios e)
        {
           service.Inserir(e);
        }

        public void Atualizar(usuarios data)
        {
            service.Atualizar(data);
        }
        public IActionResult Listar(int? Id)
        {
            if(Id.HasValue) 
            {
               return View(service.ListarPorId(Id.Value));
            }
            else
            {
                return View(service.ListarTodos());
            }
        }
        
        
    }
}