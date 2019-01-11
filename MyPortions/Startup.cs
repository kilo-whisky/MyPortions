using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(MyPortions.Startup))]
namespace MyPortions
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
