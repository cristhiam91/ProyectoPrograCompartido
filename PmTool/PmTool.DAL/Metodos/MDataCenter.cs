﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using PmTool.DATA;
using PmTool.DAL.Interfaces;
using ServiceStack.OrmLite;


namespace PmTool.DAL.Metodos
{
    public class MDataCenter : MBase, IDataCenter
    {
        public void AddDataCenter(DataCenters dataCenter)
        {
            _db.Insert(dataCenter);
        }

        public void DeleteDataCenterProject(int dataCenterProjectId)
        {
            _db.Delete<DataCenters>(x => x.DataCenter_request_id == dataCenterProjectId);
        }

        public List<DataCenters> ListDataCenters()
        {
            return _db.Select<DataCenters>();
        }

        public DataCenters SearchDataCenterProject(int dataCenterProjectId)
        {
            return _db.Select<DataCenters>(x => x.DataCenter_request_id == dataCenterProjectId).FirstOrDefault();
        }

        public void UpdateDataCenterProject(DataCenters dataCenter)
        {
            _db.Update(dataCenter);
        }
    }
}
