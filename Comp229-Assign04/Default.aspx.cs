using System;
using System.Collections.Generic;
using System.IO;
using Newtonsoft.Json;

namespace Comp229_Assign04
{
	public partial class Default : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			var a = JsonConvert.DeserializeObject<List<GameModel>>(File.ReadAllText(MapPath("Assign04.json")));
			LabelModels.Text = JsonConvert.SerializeObject(a, Formatting.Indented);
		}
	}
}