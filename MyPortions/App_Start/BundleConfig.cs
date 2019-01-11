using System.Web;
using System.Web.Optimization;

namespace MyPortions
{
	public class BundleConfig
	{
		// For more information on bundling, visit https://go.microsoft.com/fwlink/?LinkId=301862
		public static void RegisterBundles(BundleCollection bundles)
		{
			bundles.Add(new ScriptBundle("~/bundles/Scripts").Include(
									"~/Scripts/jquery-{version}.js",
									"~/Scripts/jquery.validate*",
									"~/Scripts/modernizr-*",
									"~/Scripts/bootstrap.bundle.js",
									"~/Scripts/respond.js",
									"~/Content/Selectize/js/standalone/selectize.js",
									"~/Scripts/Chart.js",
									"~/Scripts/jquery-ui-1.12.1.js",
									"~/Scripts/DataTables/jquery.dataTables.min.js",
									"~/Scripts/DataTables/dataTables.bootstrap4.min.js",
									"~/Scripts/DataTables/dataTables.fixedHeader.js",
									"~/Scripts/Site.js"
									));

			bundles.Add(new StyleBundle("~/Content/Styles").Include(
								"~/Content/bootstrap.css",
								"~/Content/font-awesome.css",
								"~/Content/Selectize/css/selectize.css",
								"~/Content/themes/base/jquery-ui.css",
								"~/Content/datatables/css/buttons.bootstrap.min.css",
								"~/Content/datatables/css/dataTables.bootstrap4.min.css",
								"~/Content/datatables/css/fixedHeader.bootstrap4.css",
								"~/Content/site.css"));
		}
	}
}
