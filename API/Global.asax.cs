using System.Web.Http;

namespace Chinook.API
{
	public class Application : System.Web.HttpApplication
	{
		protected void Application_Start ()
		{
			WebApiConfig.Register(GlobalConfiguration.Configuration);
		}
	}
}
