using ServerSideApp.Models;
using ServerSideApp.Services;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;

namespace ServerSideApp.Data
{
    public class ReportRepository
    {
        //protected ReportDbContext DbContext { get; set; }
        //public ReportRepository(ReportDbContext dbContext)
        //{
        //    this.DbContext = dbContext;
        //}

        //readonly IScopedDbContextProvider<ReportDbContext> scopedDbContextProvider;

        //public ReportRepository()
        //{
        //    // We use this parameterless constructor in the Data Source Wizard only, and not for the actual instantiation of the repository object.
        //    throw new NotSupportedException();
        //}

        //public ReportRepository(IScopedDbContextProvider<ReportDbContext> scopedDbContextProvider)
        //{
        //   // this.scopedDbContextProvider = scopedDbContextProvider ?? throw new ArgumentNullException(nameof(scopedDbContextProvider));

        //    // NOTE: the repository ctor is invoked in the context of http request. At this point of execution we have access to context-dependent data, like currentUserId.
        //    // The repository MUST read and store all the required context-dependent values for later use. E.g. notice that we do not store the IUserService (which is context/scope dependent), but read the value of current user and store it.
        //    //studentId = userService.GetCurrentUserId();
        //}

        public ArrayList GetReportTestDetails()
        {

            ArrayList listDataSource = new ArrayList();
            listDataSource.Add(new Record(1, "Jane", 19));
            listDataSource.Add(new Record(2, "Joe", 30));
            listDataSource.Add(new Record(3, "Bill", 15));
            listDataSource.Add(new Record(4, "Michael", 42));
            return listDataSource;
            //return new ArrayList(new List<ReportTestModel> { new ReportTestModel { Id = 1 } });
            //using (var dbContextScope = scopedDbContextProvider.GetDbContextScope())
            //{
            //    var dbContext = dbContextScope.DbContext;
            //    var reports = dbContext.Reports;

            //    return reports.Select(x => new ReportTestModel { Id = x.Id, Name = x.Name, DisplayName = x.DisplayName }).ToList();
            //}
        }
    }
}