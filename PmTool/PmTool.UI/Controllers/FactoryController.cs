﻿using PmTool.DAL.Interfaces;
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
    public class FactoryController : Controller
    {
      
        IFactory fac;
        IProjectType proType;
        IPhaseType phaseType;
        ISpeedConnectionType speedType;
        IFabScope fabScop;
        public FactoryController()
        {
            fac = new MFactory();
            proType = new MProjectType();
            phaseType = new MPhaseType();
            speedType = new MSpeedConnectionType();
            fabScop = new MFabScope();
        }

        public ActionResult Index()
        {
            var listProjects = fac.ListFactories();
            var listOfProjectsShow = Mapper.Map<List<Models.Factories>>(listProjects);
            return View(listOfProjectsShow);
        }




        /// <summary>
        /// Add all the dropdown views in CreateLabProject view when the view loads
        /// </summary>
        /// <returns></returns>
        /// 
        public ActionResult CreateFactoryProject()
        {

            var listProjectType = proType.ListProjectTypes();
            ViewBag.listProjectTypeDll = new SelectList(listProjectType, "Project_type_id", "Project_type_name");

            var listPhaseTypes = phaseType.ListPhaseTypes();
            ViewBag.listPhaseTypesDll = new SelectList(listPhaseTypes, "Phase_id", "Phase_name");

            var listSpeedConnectionsTypes = speedType.ListSpeedConnectionTypes();
            ViewBag.listSpeedConnectionsTypesDll = new SelectList(listSpeedConnectionsTypes, "Speed_connection_id", "Speed_connection_name");

            var listFacScope = fabScop.ListFabScopes();
            ViewBag.listFabScopesDll = new SelectList(listFacScope, "Fab_scope_id", "Fab_scope_name");


            return View();
        }
        /// <summary>
        /// /Create a laboratory project, it gets a laboratory object and add it in the database
        /// </summary>
        /// <param name="laboratory"></param>
        /// <returns>Returns the CreateLabProject view </returns>
        [HttpPost]
        public ActionResult CreateFactoryProject(Factories factory)
        {

            var listProjectType = proType.ListProjectTypes();
            ViewBag.listProjectTypeDll = new SelectList(listProjectType, "Project_type_id", "Project_type_name");

            var listPhaseTypes = phaseType.ListPhaseTypes();
            ViewBag.listPhaseTypesDll = new SelectList(listPhaseTypes, "Phase_id", "Phase_name");

            var listSpeedConnectionsTypes = speedType.ListSpeedConnectionTypes();
            ViewBag.listSpeedConnectionsTypesDll = new SelectList(listSpeedConnectionsTypes, "Speed_connection_id", "Speed_connection_name");

            var listFacScope = fabScop.ListFabScopes();
            ViewBag.listFabScopesDll = new SelectList(listFacScope, "Fab_scope_id", "Fab_scope_name");

            if (factory.Factory_requestor_id != null)
            {
                //Changes the lab project null to 2=Laboratory
                factory.Project_type = 3;
                try
                {
                    if (!ModelState.IsValid)
                    {
                        return View();
                    }

                    var fabToAdd = Mapper.Map<DATA.Factories>(factory);
                    fac.AddFactory(fabToAdd);
                    return RedirectToAction("CreateFactoryProject");
                }
                catch (Exception ex)
                {

                    throw ex;
                }
            }
            else {

                return View();

            }


        }
    }
}