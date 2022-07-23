using System.Collections.Generic;
using System.Linq;
using Microsoft.EntityFrameworkCore;

namespace Biblioteca.Models
{
    public class UsuarioService {
        public void Inserir(usuarios e)
        {
            using(BancobicliotecaContext bc = new BancobicliotecaContext())
            {
                bc.usuarios.Add(e);
                bc.SaveChanges();
            }
        }

        public void Atualizar(usuarios data)
        {
            using(BancobicliotecaContext bc = new BancobicliotecaContext())
            {
                bc.usuarios.Update(data);               
                bc.SaveChanges();
            }
        }
        public ICollection<usuarios> ListarPorId(int Id)
        {
           
            using(BancobicliotecaContext bc = new BancobicliotecaContext())
            {
                return bc.usuarios.Where(n => n.Id == Id).ToList();
            }
        }
        public ICollection<usuarios> ListarTodos()
        {
           
            using(BancobicliotecaContext bc = new BancobicliotecaContext())
            {
                return bc.usuarios.Where(n => n.Id > 0).ToList();
            }        
        }
        public (bool,int) Login(string Login , string Senha)
        {           
            using(BancobicliotecaContext bc = new BancobicliotecaContext())
            {
                if(bc.usuarios.Where(n => n.Senha == Senha && n.Login == Login).Any())
                {
                    return (true,bc.usuarios.Where(n => n.Senha == Senha && n.Login == Login).FirstOrDefault().Tipo);
                }
                else{
                    return(false,0);
                }
            }        
        }
        




    }
}