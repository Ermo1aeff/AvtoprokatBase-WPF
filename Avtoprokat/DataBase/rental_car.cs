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
    
    public partial class rental_car
    {
        public int rental_id { get; set; }
        public Nullable<int> renter_id { get; set; }
        public Nullable<int> reg_id { get; set; }
        public Nullable<System.DateTime> pickup_date { get; set; }
        public Nullable<System.DateTime> dropoff_date { get; set; }
        public Nullable<int> disc_id { get; set; }
        public Nullable<decimal> amount { get; set; }
    
        public virtual discount discount { get; set; }
        public virtual registration_plates registration_plates { get; set; }
        public virtual renter renter { get; set; }
    }
}
