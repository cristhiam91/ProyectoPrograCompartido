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
    public class MLab : MBase, ILab
    {
        public void AddLabs(Labs lab)
        {
            try
            {
                _db.Insert(lab);
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        public void DeleteLabProject(int labProjectId)
        {
            _db.Delete<Labs>(x => x.Lab_request_id == labProjectId);
        }

        public List<Labs> LabUserProjects(int userId)
        {
            try
            {
                List<Labs> UserLabProjects = _db.Where<Labs>(x => x.Lab_requestor_id == userId).ToList();

                return UserLabProjects;

            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        public List<Labs> ListLabs()
        {
            return _db.Select<Labs>();
        }

        public Labs SearchLabProject(int labProjectId)
        {
            return _db.Select<Labs>(x => x.Lab_request_id == labProjectId).FirstOrDefault();
        }

        public void UpdateLabProject(Labs lab)
        {
            _db.Update(lab);
        }
    }
}
