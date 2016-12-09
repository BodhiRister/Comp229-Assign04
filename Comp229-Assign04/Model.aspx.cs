using System;

namespace Comp229_Assign04
{
    public partial class Model : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GameModel gameModel = (GameModel)Session["model"];
            if (gameModel != null)
            {
                LabelName.Text = gameModel.Name;
                TextNewName.Text = gameModel.Name;
                Image.ImageUrl = gameModel.ImageUrl;
                LabelFaction.Text = gameModel.Faction;
                LabelRank.Text = gameModel.Rank + "";
                LabelBase.Text = gameModel.Base + "";
                LabelSize.Text = gameModel.Size + "";
                LabelDeploymentZone.Text = gameModel.DeploymentZone;

                string traits = "";
                if (gameModel.Traits != null)
                {
                    foreach (string gameModelTrait in gameModel.Traits)
                    {
                        traits += gameModelTrait + "  ";
                    }
                }
                LabelTraits.Text = traits;

                string types = "";
                if (gameModel.Types != null)
                {
                    foreach (string gameModelType in gameModel.Types)
                    {
                        types += gameModelType + "  ";
                    }
                }
                LabelTypes.Text = types;

                GridDefenseChart.DataSource = gameModel.DefenseChart;
                GridDefenseChart.DataBind();
                LabelMobility.Text = gameModel.Mobility + "";
                LabelWillpower.Text = gameModel.Willpower + "";
                LabelResiliance.Text = gameModel.Resiliance + "";
                LabelWounds.Text = gameModel.Wounds + "";
                GridActions.DataSource = gameModel.Actions;
                GridActions.DataBind();
                LabelWounds.Text = gameModel.Wounds + "";
                GridSpecialAbilities.DataSource = gameModel.SpecialAbilities;
                GridSpecialAbilities.DataBind();

            }

        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            GameModel gameModel = (GameModel)Session["model"];
            GameModel.AllGameModels.Remove(gameModel);
            GameModel.WriteAllGameModels(MapPath("Assign04.json"));
            Response.Redirect("~/Default.aspx");
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            GameModel gameModel = (GameModel)Session["model"];
            gameModel.Name = TextNewName.Text;
            GameModel.WriteAllGameModels(MapPath("Assign04.json"));
            Response.Redirect("~/Default.aspx");
        }
    }
}