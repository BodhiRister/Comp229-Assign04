﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;

namespace Comp229_Assign04
{
	public partial class Default : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			GameModel a = JsonConvert.DeserializeObject<GameModel>("{ name: \"asdf\"}");
			LabelModels.Text = a.Name;
		}
	}
}