using System;

namespace Biblioteca.Models
{
    public class Administrador 
    {
        public string Listagem { get; set; }
        public string Inclusao { get; set; }
        public string Exclusao { get; set; }
        public string Edição { get; set; }
        public Administrador()
        {

        }

        public override bool Equals(object obj)
        {
            return base.Equals(obj);
        }

        public override int GetHashCode()
        {
            return base.GetHashCode();
        }

        public override string ToString()
        {
            return base.ToString();
        }
        
    }
   
}