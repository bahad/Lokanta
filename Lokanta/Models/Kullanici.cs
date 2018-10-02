namespace Lokanta.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Kullanici")]
    public partial class Kullanici
    {
        public int kullaniciID { get; set; }

        [StringLength(50)]
        public string kullaniciAd { get; set; }

        [StringLength(50)]
        public string kullaniciSifre { get; set; }
    }
}
