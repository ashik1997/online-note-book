using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(OnlineNote.Startup))]
namespace OnlineNote
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
