using System;
using Chinook.API.Models;
using System.Web.Http;

namespace Chinook.API.Controllers
{
	public class InfoController : ApiController
	{
		[HttpGet]
		public Info Get ()
		{
			var mvcName = typeof(ApiController).Assembly.GetName ();
			var isMono = Type.GetType ("Mono.Runtime") != null;

			var version = mvcName.Version.Major + "." + mvcName.Version.Minor;
			var runtime = isMono ? "Mono" : ".NET";

			return new Info { Version = version, Runtime = runtime };
		}
	}
}

