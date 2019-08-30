using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace HMMSLoadExcelFiles
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            FileTypes.LogModel log = new FileTypes.LogModel();
            log.WriteLog("SUCCESS", "ON-Start");
            UploadFiles upload = new UploadFiles();
            upload.LoadFiles();
            //ExportTables exportfiles = new ExportTables();
            //exportfiles.CreateCSVfile();
        }
    }
}
