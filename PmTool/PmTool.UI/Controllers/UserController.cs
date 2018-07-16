using PmTool.DAL.Interfaces;
using PmTool.DAL.Metodos;
using PmTool.UI.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using AutoMapper;


namespace PmTool.UI.Controllers
{
    public class UserController : Controller
    {
        // GET: User
        IUser user;
        public UserController()
        {
            user = new MUser();

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
    }
}