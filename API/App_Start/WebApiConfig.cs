using System.Web.Http;

namespace Chinook.API
{
	public class WebApiConfig
	{
		public static void Register(HttpConfiguration configuration)
		{
			configuration.Routes.MapHttpRoute(
				"API Default",
				"{controller}/{id}",
				new { id = RouteParameter.Optional }
			);
		}
	}
}

