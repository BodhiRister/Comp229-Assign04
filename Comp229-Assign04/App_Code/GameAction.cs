using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.AccessControl;
using System.Security.Permissions;
using System.Web;

namespace Comp229_Assign04
{
	public class GameAction
	{
		public string Name { get; set; }
		public string Type { get; set; }
		public int Rating { get; set; }
		public int Range { get; set; }
	}
}