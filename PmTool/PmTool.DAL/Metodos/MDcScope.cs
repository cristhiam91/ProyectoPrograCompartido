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
    public class MDcScope: MBase, IDcScope
    {
        public List<DcScopes> ListDataCenterScopes()
        {
            return _db.Select<DcScopes>();
        }
    }
}
