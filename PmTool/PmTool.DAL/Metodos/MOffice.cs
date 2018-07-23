using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using PmTool.DATA;
using PmTool.DAL.Interfaces;
using ServiceStack.OrmLite;

namespace PmTool.DAL.Metodos
{
    public class MOffice : MBase, IOffice
    {
        public void AddOfficeProject(Offices office)
        {
            _db.Insert(office);
        }

        public void DeleteOfficeProject(int officeProjectId)
        {
            _db.Delete<Offices>(x => x.Office_request_id == officeProjectId);
        }

        public List<Offices> ListOfficeProjects()
        {
            return _db.Select<Offices>();
        }

        public List<Offices> OfficeUserProjects(int userId)
        {
            try
            {
                List<Offices> UserOfficeProjects = _db.Where<Offices>(x => x.Office_requestor_id == userId).ToList();

                return UserOfficeProjects;

            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        public Offices SearchOfficeProject(int officeProjectId)
        {
            return _db.Select<Offices>(x => x.Office_request_id == officeProjectId).FirstOrDefault();
        }

        public void UpdateOfficeProject(Offices office)
        {
            _db.Update(office);
        }
    }
}
