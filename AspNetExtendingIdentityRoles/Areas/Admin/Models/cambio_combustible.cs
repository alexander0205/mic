//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace PageWebMic.Areas.Admin.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class cambio_combustible
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public cambio_combustible()
        {
            this.cambio_combustible_precio = new HashSet<cambio_combustible_precio>();
            this.media_combustible = new HashSet<media_combustible>();
        }
    
        public int id { get; set; }
        public string user_id { get; set; }
        public Nullable<System.DateTime> fecha { get; set; }
        public string titulo { get; set; }
        public string tasa_cambio { get; set; }
        public string file_combustible { get; set; }
        public string file_gas_natural { get; set; }
    
        public virtual AspNetUsers AspNetUsers { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<cambio_combustible_precio> cambio_combustible_precio { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<media_combustible> media_combustible { get; set; }
        public List<cambio_combustible_precio> cambio_combustible_precio_lista { get;  set; }
    }
}
