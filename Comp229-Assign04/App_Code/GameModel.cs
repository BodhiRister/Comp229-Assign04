using System.Collections.Generic;
using System.IO;
using Newtonsoft.Json;

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
		public string ImageUrl { get; set; }


		public static List<GameModel> AllGameModels { get; set; }


		public static void ReadAllGameModels(string pathToJson)
		{
			AllGameModels = JsonConvert.DeserializeObject<List<GameModel>>(File.ReadAllText(pathToJson));
		}

        public static void WriteAllGameModels(string pathToJson)
        {
            string textFile = JsonConvert.SerializeObject(AllGameModels);

            File.WriteAllText(pathToJson, textFile);
        }

    }
}