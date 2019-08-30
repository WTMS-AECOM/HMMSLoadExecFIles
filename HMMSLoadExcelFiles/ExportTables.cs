using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HMMSLoadExcelFiles
{
    class ExportTables
    {

        private string BatFileName = System.Configuration.ConfigurationManager.AppSettings["BatFileName"];


        public void CreateCSVfile()
        {
            System.Diagnostics.Process.Start(BatFileName);
        }
}
}
