//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Avtoprokat.DataBase
{
    using System;
    using System.Collections.Generic;
    
    public partial class car
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public car()
        {
            this.registration_plates = new HashSet<registration_plates>();
        }
    
        public int car_id { get; set; }
        public Nullable<int> model_id { get; set; }
        public Nullable<int> year_issue { get; set; }
        public Nullable<decimal> price { get; set; }
    
        public virtual model_car model_car { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<registration_plates> registration_plates { get; set; }
    }
}
