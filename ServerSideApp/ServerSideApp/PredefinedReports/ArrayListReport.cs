using DevExpress.XtraReports.UI;
using ServerSideApp.Data;
using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing;

namespace ServerSideApp.PredefinedReports
{
    public partial class ArrayListReport : DevExpress.XtraReports.UI.XtraReport
    {
        public ArrayListReport()
        {
            InitializeComponent();

            ArrayList listDataSource = new ArrayList();
            listDataSource.Add(new Record(1, "Jane", 19));
            listDataSource.Add(new Record(2, "Joe", 30));
            listDataSource.Add(new Record(3, "Bill", 15));
            listDataSource.Add(new Record(4, "Michael", 42));

            this.DataSource = listDataSource;

            this.AddBoundLabel("ID", new Rectangle(100, 20, 100, 30));
            this.AddBoundLabel("Name", new Rectangle(200, 20, 100, 30));
            this.AddBoundLabel("Age", new Rectangle(300, 20, 100, 30));
        }

        public void AddBoundLabel(string bindingMember, Rectangle bounds)
        {
            XRLabel label = new XRLabel();
            Detail.Controls.Add(label);
            label.Location = bounds.Location;
            label.Size = bounds.Size;
            label.ExpressionBindings.Add(
                new ExpressionBinding("BeforePrint", "Text", bindingMember));
        }
    }
}
