namespace Lokanta.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Menu")]
    public partial class Menu
    {
        public int menuID { get; set; }

        [StringLength(100)]
        public string menuTur { get; set; }

        [StringLength(100)]
        public string menuAd { get; set; }

        [StringLength(100)]
        public string menuFiyat { get; set; }

        public string menuAciklama { get; set; }
    }
}
