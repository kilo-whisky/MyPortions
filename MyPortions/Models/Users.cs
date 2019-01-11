using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MyPortions.Models
{
	public class Users
	{
		public string FirstName { get; set; }
		public string LastName { get; set; }
		public string FullName { get; set; }
		public DateTime DateofBirth { get; set; }
		public string PhoneNumber { get; set; }
		public string Gender { get; set; }
		public decimal Height { get; set; }
		public decimal WeightGoal { get; set; }
		public int CaloriesGoal { get; set; }
	}
}