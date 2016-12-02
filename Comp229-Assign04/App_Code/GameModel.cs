using System.Collections.Generic;

namespace Comp229_Assign04
{
	public class GameModel
	{
		public string Name { get; set; }
		public string Faction { get; set; }
		public int Rank { get; set; }
		public int Base { get; set; }
		public int Size { get; set; }
		public string DeploymentZone { get; set; }
		public List<string> Traits { get; set; }
		public List<string> Types { get; set; }
		public List<string> DefenseChart { get; set; }
		public int Mobility { get; set; }
		public int Willpower { get; set; }
		public int Resiliance { get; set; }
		public int Wounds { get; set; }
		public List<GameAction> Actions { get; set; }
		public List<GameSpecialAbility> SpecialAbilities { get; set; }
	}
}