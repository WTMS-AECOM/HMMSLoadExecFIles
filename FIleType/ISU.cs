using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HMMSLoadExcelFiles.FileType
{
    class ISUModel
    {
        public ISUModel() : base()
        { }

        public string[] ISUlist =
        {
            "Unit Price",
            "Issue Point Code",
            "Date Out",
            "NSN",
            "Building Code",
            "Hazard Code",
            "Issue Group Sequence",
            "Issue QTY Out",
            "Scale Indicator",
            "UoM",
            "Item Name",
            "Memo/Note",
            "Job ID Code",
            "Weight Out (Kgrams)",
            "Kit Indicator",
            "Pounds Out QTY",
            "Supervisor Code",
            "MSDS Printed IND",
            "Serial Number",
            "Organization Code",
            "Product/MSDS Number",
            "ID Number",
            "Resource Name",
            "Status Out",
            "Trade Name",
            "Update Date",
            "Updated By",
            "Zone Code",
            "Resource Out Cd"
        };

        public Boolean loadData(DataSet dat)
        {
            HMMSEntitiesDB isudb = new HMMSEntitiesDB();
            try
            {
                foreach (DataRow dr in dat.Tables[0].Rows)
                {
                    ISU localisu = new ISU();
                    localisu.Id = Guid.NewGuid();
                    localisu.Unit_Price = Convert.IsDBNull(dr["Unit Price"]) ? "" : dr["Unit Price"].ToString().Trim().Replace(">", "GTN").Replace("<", "ltn").Replace("$", "pct").Replace(",", ";").Replace("\n", ";").Replace("\r", ";");
                    localisu.Issue_Point_Code = Convert.IsDBNull(dr["Issue Point Code"]) ? "" : dr["Issue Point Code"].ToString().Trim().Replace(">", "GTN").Replace("<", "ltn").Replace("$", "pct").Replace(",", ";").Replace("\n", ";").Replace("\r", ";");
                    localisu.Date_Out = Convert.IsDBNull(dr["Date Out"]) ? "" : dr["Date Out"].ToString().Trim().Replace(">", "GTN").Replace("<", "ltn").Replace("$", "pct").Replace(",", ";").Replace("\n", ";").Replace("\r", ";");
                    localisu.NSN = Convert.IsDBNull(dr["NSN"]) ? "" : dr["NSN"].ToString().Trim().Replace(">", "GTN").Replace("<", "ltn").Replace("$", "pct").Replace(",", ";").Replace("\n", ";").Replace("\r", ";");
                    localisu.Building_Code = Convert.IsDBNull(dr["Building Code"]) ? "" : dr["Building Code"].ToString().Trim().Replace(">", "GTN").Replace("<", "ltn").Replace("$", "pct").Replace(",", ";").Replace("\n", ";").Replace("\r", ";");
                    localisu.Hazard_Code = Convert.IsDBNull(dr["Hazard Code"]) ? "" : dr["Hazard Code"].ToString().Trim().Replace(">", "GTN").Replace("<", "ltn").Replace("$", "pct").Replace(",", ";").Replace("\n", ";").Replace("\r", ";");
                    localisu.Issue_Group_Sequence = Convert.IsDBNull(dr["Issue Group Sequence"]) ? "" : dr["Issue Group Sequence"].ToString().Trim().Replace(">", "GTN").Replace("<", "ltn").Replace("$", "pct").Replace(",", ";").Replace("\n", ";").Replace("\r", ";");
                    localisu.Issue_QTY_Out = Convert.IsDBNull(dr["Issue QTY Out"]) ? "" : dr["Issue QTY Out"].ToString().Trim().Replace(">", "GTN").Replace("<", "ltn").Replace("$", "pct").Replace(",", ";").Replace("\n", ";").Replace("\r", ";");
                    localisu.Scale_Indicator = Convert.IsDBNull(dr["Scale Indicator"]) ? "" : dr["Scale Indicator"].ToString().Trim().Replace(">", "GTN").Replace("<", "ltn").Replace("$", "pct").Replace(",", ";").Replace("\n", ";").Replace("\r", ";");
                    localisu.UoM = Convert.IsDBNull(dr["UoM"]) ? "" : dr["UoM"].ToString().Trim().Replace(">", "GTN").Replace("<", "ltn").Replace("$", "pct").Replace(",", ";").Replace("\n", ";").Replace("\r", ";");
                    localisu.Item_Name = Convert.IsDBNull(dr["Item Name"]) ? "" : dr["Item Name"].ToString().Trim().Replace(">", "GTN").Replace("<", "ltn").Replace("$", "pct").Replace(",", ";").Replace("\n", ";").Replace("\r", ";");
                    localisu.Memo_Note = Convert.IsDBNull(dr["Memo/Note"]) ? "" : dr["Memo/Note"].ToString().Trim().Replace(">", "GTN").Replace("<", "ltn").Replace("$", "pct").Replace(",", ";").Replace("\n", ";").Replace("\r", ";");
                    localisu.Job_ID_Code = Convert.IsDBNull(dr["Job ID Code"]) ? "" : dr["Job ID Code"].ToString().Trim().Replace(">", "GTN").Replace("<", "ltn").Replace("$", "pct").Replace(",", ";").Replace("\n", ";").Replace("\r", ";");
                    localisu.Weight_Out = Convert.IsDBNull(dr["Weight Out (Kgrams)"]) ? "" : dr["Weight Out (Kgrams)"].ToString().Trim().Replace(">", "GTN").Replace("<", "ltn").Replace("$", "pct").Replace(",", ";").Replace("\n", ";").Replace("\r", ";");
                    localisu.Kit_Indicator = Convert.IsDBNull(dr["Kit Indicator"]) ? "" : dr["Kit Indicator"].ToString().Trim().Replace(">", "GTN").Replace("<", "ltn").Replace("$", "pct").Replace(",", ";").Replace("\n", ";").Replace("\r", ";");
                    localisu.Pounds_Out_QTY = Convert.IsDBNull(dr["Pounds Out QTY"]) ? "" : dr["Pounds Out QTY"].ToString().Trim().Replace(">", "GTN").Replace("<", "ltn").Replace("$", "pct").Replace(",", ";").Replace("\n", ";").Replace("\r", ";");
                    localisu.Supervisor_Code = Convert.IsDBNull(dr["Supervisor Code"]) ? "" : dr["Supervisor Code"].ToString().Trim().Replace(">", "GTN").Replace("<", "ltn").Replace("$", "pct").Replace(",", ";").Replace("\n", ";").Replace("\r", ";");
                    localisu.MSDS_Printed_IND = Convert.IsDBNull(dr["MSDS Printed IND"]) ? "" : dr["MSDS Printed IND"].ToString().Trim().Replace(">", "GTN").Replace("<", "ltn").Replace("$", "pct").Replace(",", ";").Replace("\n", ";").Replace("\r", ";");
                    localisu.Serial_Number = Convert.IsDBNull(dr["Serial Number"]) ? "" : dr["Serial Number"].ToString().Trim().Replace(">", "GTN").Replace("<", "ltn").Replace("$", "pct").Replace(",", ";").Replace("\n", ";").Replace("\r", ";");
                    localisu.Organization_Code = Convert.IsDBNull(dr["Organization Code"]) ? "" : dr["Organization Code"].ToString().Trim().Replace(">", "GTN").Replace("<", "ltn").Replace("$", "pct").Replace(",", ";").Replace("\n", ";").Replace("\r", ";");
                    localisu.Product_MSDS_Number = Convert.IsDBNull(dr["Product/MSDS Number"]) ? "" : dr["Product/MSDS Number"].ToString().Trim().Replace(">", "GTN").Replace("<", "ltn").Replace("$", "pct").Replace(",", ";").Replace("\n", ";").Replace("\r", ";");
                    localisu.ID_Number = Convert.IsDBNull(dr["ID Number"]) ? "" : dr["ID Number"].ToString().Trim().Replace(">", "GTN").Replace("<", "ltn").Replace("$", "pct").Replace(",", ";").Replace("\n", ";").Replace("\r", ";");
                    localisu.Resource_Name = Convert.IsDBNull(dr["Resource Name"]) ? "" : dr["Resource Name"].ToString().Trim().Replace(">", "GTN").Replace("<", "ltn").Replace("$", "pct").Replace(",", ";").Replace("\n", ";").Replace("\r", ";");
                    localisu.Status_Out = Convert.IsDBNull(dr["Status Out"]) ? "" : dr["Status Out"].ToString().Trim().Replace(">", "GTN").Replace("<", "ltn").Replace("$", "pct").Replace(",", ";").Replace("\n", ";").Replace("\r", ";");
                    localisu.Trade_Name = Convert.IsDBNull(dr["Trade Name"]) ? "" : dr["Trade Name"].ToString().Trim().Replace(">", "GTN").Replace("<", "ltn").Replace("$", "pct").Replace(",", ";").Replace("\n", ";").Replace("\r", ";");
                    localisu.Update_Date = Convert.IsDBNull(dr["Update Date"]) ? "" : dr["Update Date"].ToString().Trim().Replace(">", "GTN").Replace("<", "ltn").Replace("$", "pct").Replace(",", ";").Replace("\n", ";").Replace("\r", ";");
                    localisu.Updated_By = Convert.IsDBNull(dr["Updated By"]) ? "" : dr["Updated By"].ToString().Trim().Replace(">", "GTN").Replace("<", "ltn").Replace("$", "pct").Replace(",", ";").Replace("\n", ";").Replace("\r", ";");
                    localisu.Zone_Code = Convert.IsDBNull(dr["Zone Code"]) ? "" : dr["Zone Code"].ToString().Trim().Replace(">", "GTN").Replace("<", "ltn").Replace("$", "pct").Replace(",", ";").Replace("\n", ";").Replace("\r", ";");
                    localisu.Resource_Out_Cd = Convert.IsDBNull(dr["Resource Out Cd"]) ? "" : dr["Resource Out Cd"].ToString().Trim().Replace(">", "GTN").Replace("<", "ltn").Replace("$", "pct").Replace(",", ";").Replace("\n", ";").Replace("\r", ";");

                    isudb.ISUs.Add(localisu);
                }
                isudb.SaveChanges();
            }
            catch (System.Data.Entity.Core.EntityException ee)
            {
                var msg = ee.Message;
                msg = ee.InnerException.Message;
                return false;
            }
            catch (System.Data.Entity.Validation.DbEntityValidationException e)
            {
                {
                    string msg;
                    foreach (var eve in e.EntityValidationErrors)
                    {
                        msg = "Entity of type \"{0}\" in state \"{1}\" has the following validation errors:" + eve.Entry.Entity.GetType().Name + ":" + eve.Entry.State;
                        foreach (var ve in eve.ValidationErrors)
                        {
                            msg = "- Property: \"{0}\", Error: \"{1}\"" + ve.PropertyName + ":" + ve.ErrorMessage;
                        }
                    }
                    return false;
                }
            }
            finally
            {
                isudb.Dispose();
            }
            return true;
        }
    }
}
