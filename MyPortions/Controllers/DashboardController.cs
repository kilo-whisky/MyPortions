using Microsoft.AspNet.Identity;
using System.Web.Mvc;

namespace MyPortions.Controllers
{
	public class DashboardController : Controller
	{
		// GET: Dashboard
		[Authorize]
		public ActionResult Index()
		{
			ViewBag.UserId = User.Identity.GetUserId();
			return View();
		}
	}
}