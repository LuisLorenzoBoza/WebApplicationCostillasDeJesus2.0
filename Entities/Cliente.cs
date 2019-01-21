using System.ComponentModel.DataAnnotations;

namespace Entities
{
    public class Cliente
    {
        [Key]
        public int ClieteID { get; set; }
        public string Nombre { get; set; }
        public string Email { get; set; }
        public string Telefono { get; set; }

        public Cliente(int ClienteID, string Nombre, string Email, string Telefono)
        {
            this.ClieteID = ClienteID;
            this.Nombre = Nombre;
            this.Email = Email;
        }

        public Cliente()
        {
            ClieteID = 0;
            Nombre = string.Empty;
            Email = string.Empty;
            Telefono = string.Empty;
        }
    }
}
