﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entities
{
    public class Producto
    {
        [Key]
        public int ProductoID { get; set; }
        public string Descripcion { get; set; }
        public int Cantidad { get; set; }
        public decimal Precio { get; set; }
        public DateTime Fecha { get; set; }

        public Producto()
        {
            ProductoID = 0;
            Descripcion = string.Empty;
            Cantidad = 0;
            Precio = 0;
            Fecha = DateTime.Now;
        }

        public Producto(int ProductoID, string Descripcion, int Cantidad, decimal Precio, DateTime FechaDeRegistro)
        {
            this.ProductoID = ProductoID;
            this.Descripcion = Descripcion;
            this.Cantidad = Cantidad;
            this.Precio = Precio;
            this.Fecha = FechaDeRegistro;
        }

        public override string ToString()
        {
            return this.Descripcion;
        }
    }
}
