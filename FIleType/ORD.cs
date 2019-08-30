using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HMMSLoadExcelFiles.FileType
{
    class ORDModel
    {
        public ORDModel() : base()
        { }

        public string[] ORDlist =
        {
           "Issue Point Code",
            "NSN",
            "Order Comments",
            "Order QTY",
            "Date Ordered",
            "Order Request Number",
            "Ship to Location",
            "Requester Logon",
            "Zone Code",
            "Order Priority",
            "Job Order Number",
            "Order Shop Code",
            "Order Unit of Issue",
            "Work Order Code",
            "Job Order Code",
            "Order Document Number",
            "Update Date",
            "Updated By",
            "Order Completion Date",
            "Request Status Code"

        };

        public Boolean loadData(DataSet dat)
        {
            HMMSEntitiesDB orddb = new HMMSEntitiesDB();
            try
            {
                foreach (DataRow dr in dat.Tables[0].Rows)
                {
                    ORD localord = new ORD();
                    localord.Id = Guid.NewGuid();
                    localord.Issue_Point_Code = Convert.IsDBNull(dr["Issue Point Code"]) ? "" : dr["Issue Point Code"].ToString().Trim().Replace(">", "GTN").Replace("<", "ltn").Replace("$", "pct").Replace(",", ";").Replace("\n", ";").Replace("\r", ";");
                    localord.NSN = Convert.IsDBNull(dr["NSN"]) ? "" : dr["NSN"].ToString().Trim().Replace(">", "GTN").Replace("<", "ltn").Replace("$", "pct").Replace(",", ";").Replace("\n", ";").Replace("\r", ";");
                    localord.Order_Comments = Convert.IsDBNull(dr["Order Comments"]) ? "" : dr["Order Comments"].ToString().Trim().Replace(">", "GTN").Replace("<", "ltn").Replace("$", "pct").Replace(",", ";").Replace("\n", ";").Replace("\r", ";");
                    localord.Order_QTY = Convert.IsDBNull(dr["Order QTY"]) ? "" : dr["Order QTY"].ToString().Trim().Replace(">", "GTN").Replace("<", "ltn").Replace("$", "pct").Replace(",", ";").Replace("\n", ";").Replace("\r", ";");
                    localord.Date_Ordered = Convert.IsDBNull(dr["Date Ordered"]) ? "" : dr["Date Ordered"].ToString().Trim().Replace(">", "GTN").Replace("<", "ltn").Replace("$", "pct").Replace(",", ";").Replace("\n", ";").Replace("\r", ";");
                    localord.Order_Request_Number = Convert.IsDBNull(dr["Order Request Number"]) ? "" : dr["Order Request Number"].ToString().Trim().Replace(">", "GTN").Replace("<", "ltn").Replace("$", "pct").Replace(",", ";").Replace("\n", ";").Replace("\r", ";");
                    localord.Ship_to_Location = Convert.IsDBNull(dr["Ship to Location"]) ? "" : dr["Ship to Location"].ToString().Trim().Replace(">", "GTN").Replace("<", "ltn").Replace("$", "pct").Replace(",", ";").Replace("\n", ";").Replace("\r", ";");
                    localord.Requester_Logon = Convert.IsDBNull(dr["Requester Logon"]) ? "" : dr["Requester Logon"].ToString().Trim().Replace(">", "GTN").Replace("<", "ltn").Replace("$", "pct").Replace(",", ";").Replace("\n", ";").Replace("\r", ";");
                    localord.Zone_Code = Convert.IsDBNull(dr["Zone Code"]) ? "" : dr["Zone Code"].ToString().Trim().Replace(">", "GTN").Replace("<", "ltn").Replace("$", "pct").Replace(",", ";").Replace("\n", ";").Replace("\r", ";");
                    localord.Order_Priority = Convert.IsDBNull(dr["Order Priority"]) ? "" : dr["Order Priority"].ToString().Trim().Replace(">", "GTN").Replace("<", "ltn").Replace("$", "pct").Replace(",", ";").Replace("\n", ";").Replace("\r", ";");
                    localord.Job_Order_Number = Convert.IsDBNull(dr["Job Order Number"]) ? "" : dr["Job Order Number"].ToString().Trim().Replace(">", "GTN").Replace("<", "ltn").Replace("$", "pct").Replace(",", ";").Replace("\n", ";").Replace("\r", ";");
                    localord.Order_Shop_Code = Convert.IsDBNull(dr["Order Shop Code"]) ? "" : dr["Order Shop Code"].ToString().Trim().Replace(">", "GTN").Replace("<", "ltn").Replace("$", "pct").Replace(",", ";").Replace("\n", ";").Replace("\r", ";");
                    localord.Order_Unit_of_Issue = Convert.IsDBNull(dr["Order Unit of Issue"]) ? "" : dr["Order Unit of Issue"].ToString().Trim().Replace(">", "GTN").Replace("<", "ltn").Replace("$", "pct").Replace(",", ";").Replace("\n", ";").Replace("\r", ";");
                    localord.Work_Order_Code = Convert.IsDBNull(dr["Work Order Code"]) ? "" : dr["Work Order Code"].ToString().Trim().Replace(">", "GTN").Replace("<", "ltn").Replace("$", "pct").Replace(",", ";").Replace("\n", ";").Replace("\r", ";");
                    localord.Job_Order_Code = Convert.IsDBNull(dr["Job Order Code"]) ? "" : dr["Job Order Code"].ToString().Trim().Replace(">", "GTN").Replace("<", "ltn").Replace("$", "pct").Replace(",", ";").Replace("\n", ";").Replace("\r", ";");
                    localord.Order_Document_Number = Convert.IsDBNull(dr["Order Document Number"]) ? "" : dr["Order Document Number"].ToString().Trim().Replace(">", "GTN").Replace("<", "ltn").Replace("$", "pct").Replace(",", ";").Replace("\n", ";").Replace("\r", ";");
                    localord.Update_Date = Convert.IsDBNull(dr["Update Date"]) ? "" : dr["Update Date"].ToString().Trim().Replace(">", "GTN").Replace("<", "ltn").Replace("$", "pct").Replace(",", ";").Replace("\n", ";").Replace("\r", ";");
                    localord.Updated_By = Convert.IsDBNull(dr["Updated By"]) ? "" : dr["Updated By"].ToString().Trim().Replace(">", "GTN").Replace("<", "ltn").Replace("$", "pct").Replace(",", ";").Replace("\n", ";").Replace("\r", ";");
                    localord.Order_Completion_Date = Convert.IsDBNull(dr["Order Completion Date"]) ? "" : dr["Order Completion Date"].ToString().Trim().Replace(">", "GTN").Replace("<", "ltn").Replace("$", "pct").Replace(",", ";").Replace("\n", ";").Replace("\r", ";");
                    localord.Request_Status_Code = Convert.IsDBNull(dr["Request Status Code"]) ? "" : dr["Request Status Code"].ToString().Trim().Replace(">", "GTN").Replace("<", "ltn").Replace("$", "pct").Replace(",", ";").Replace("\n", ";").Replace("\r", ";");


                    orddb.ORDs.Add(localord);
                }
                orddb.SaveChanges();
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
                orddb.Dispose();
            }
            return true;
        }
    }
}
