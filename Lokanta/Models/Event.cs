namespace Lokanta.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Event")]
    public partial class Event
    {
        public int eventID { get; set; }

        [StringLength(100)]
        public string eventBaslik { get; set; }

        public string eventTarih { get; set; }

        public string eventAciklama { get; set; }
    }
}
