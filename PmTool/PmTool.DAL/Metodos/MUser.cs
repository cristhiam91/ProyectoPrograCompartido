using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using PmTool.DATA;
using ServiceStack.OrmLite;
using PmTool.DAL.Interfaces;

namespace PmTool.DAL.Metodos
{
    public class MUser : MBase, IUser
    {

        public List<Users> ListUsers()
        {
            return _db.Select<Users>();

        }

        public void AddUser(Users user)
        {
            try
            {
                _db.Insert(user);
            }
            catch (Exception ex)
            {

                throw ex;
            }
           
        }
       
    }
}
