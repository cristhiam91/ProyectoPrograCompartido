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
    public class MOtherProject : MBase, IOtherProject
    {
        public void AddOtherProject(OtherProjects otherProject)
        {
            _db.Insert(otherProject);
        }

        public void DeleteOtherProject(int OtherProjectId)
        {
            _db.Delete<OtherProjects>(x => x.Other_request_id == OtherProjectId);
        }

        public List<OtherProjects> ListOtherProjects()
        {
            return _db.Select<OtherProjects>();
        }

        public List<OtherProjects> OtherProjectUserProjects(int userId)
        {
            try
            {
                List<OtherProjects> UserOtherProjectProjects = _db.Where<OtherProjects>(x => x.Other_requestor_id == userId).ToList();

                return UserOtherProjectProjects;

            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        public OtherProjects SearchOtherProject(int OtherProjectId)
        {
            return _db.Select<OtherProjects>(x => x.Other_request_id == OtherProjectId).FirstOrDefault();
        }

        public void UpdateOtherProject(OtherProjects otherProject)
        {
            _db.Update(otherProject);
        }
    }
}
