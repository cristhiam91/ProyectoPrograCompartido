using PmTool.DAL.Interfaces;
using PmTool.DAL.Metodos;
using PmTool.UI.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using AutoMapper;
using System.Net;

namespace PmTool.UI.Controllers
{
    public class UserController : Controller
    {
        // GET: User
        IUser user;
        IUserType uType;
       
        public UserController()
        {
            user = new MUser();
            uType = new MUserType();
        }
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult UsersId()
        {
            var usuario = user.ListUsers();
            ViewBag.usuarioDll = new SelectList(usuario, "User_id", "User_name");
            return View();
        }

        public ActionResult CreateAccount(Users users)
        {
            var listUserTypes = uType.ListUserTypes();
            ViewBag.listUserTypesDll = new SelectList(listUserTypes, "User_type_id", "User_type_name");

            if (users.User_name != null)
            {
                try
                {
                    if (!ModelState.IsValid)
                    {
                        return View();
                    }

                    var userToAdd = Mapper.Map<DATA.Users>(users);
                    user.AddUser(userToAdd);
                    user.CreatedUserAccountSentEmail(users.User_email,users.User_name);
                    return RedirectToAction("CreateAccount");
                }
                catch (Exception ex)
                {

                    throw ex;
                }
            }
            else
            {
                return View();
            }
        }
  
        public ActionResult UserProfileManagement()
        {
            var users = user.ListUsers();
            var usersToShow = Mapper.Map <List<Models.Users>>(users);
            return View(usersToShow);
        }

        public ActionResult CreateUserAccount()
        {
            return View();
        }
        [HttpPost]
        public ActionResult CreateUserAccount(Users users)
        {
            try
            {
                if (!ModelState.IsValid)
                {
                    return View();
                }
                var userToAdd = Mapper.Map<DATA.Users>(user);
                user.AddUser(userToAdd);
                return RedirectToAction("UserProfileManagement");
            }
            catch (Exception)
            {

                throw;
            }
        }
        public ActionResult EditUserAccount(int userId)
        {
            var usertoSearch = user.SearchUser(userId);
            var usersToShow = Mapper.Map<Models.Users>(usertoSearch);
            return View(usersToShow);
        }
        [HttpPost]
        public ActionResult EditUserAccount(Users users)
        {
            try
            {
                if (!ModelState.IsValid)
                {
                    return View();
                }
                var userToEdit = Mapper.Map<DATA.Users>(user);
                user.EditUser(userToEdit);
                return RedirectToAction("UserProfileManagement");
            }
            catch (Exception)
            {

                throw;
            }
        }
        public ActionResult DeleteUserAccount(int userId)
        {

            try
            {
                user.DeleteUser(userId);
                return RedirectToAction("UserProfileManagement");
            }
            catch (Exception)
            {

                throw;
            }

        }

        public ActionResult UserDetails(int userId)
        {
            var usertoSearch = user.SearchUser(userId);
            var usersToShow = Mapper.Map<Models.Users>(usertoSearch);
            return View(usersToShow);
        }



    }
}