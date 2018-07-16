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
    public class OfficeController : Controller
    {
        // GET: Lab
        IOffice off;
        IProjectType proType;
        IPhaseType phaseType;
        ISpeedConnectionType speedType;
        IOfficeScope offScop;
        public OfficeController()
        {
            off = new MOffice();
            proType = new MProjectType();
            phaseType = new MPhaseType();
            speedType = new MSpeedConnectionType();
            offScop = new MOfficeScope();
        }

        public ActionResult Index()
        {
            var listProjects = off.ListOfficeProjects();
            var listOfProjectsShow = Mapper.Map<List<Models.Offices>>(listProjects);
            return View(listOfProjectsShow);
        }




        /// <summary>
        /// Add all the dropdown views in CreateLabProject view when the view loads
        /// </summary>
        /// <returns></returns>
        /// 
        public ActionResult CreateOfficeProject()
        {

            var listProjectType = proType.ListProjectTypes();
            ViewBag.listProjectTypeDll = new SelectList(listProjectType, "Project_type_id", "Project_type_name");

            var listPhaseTypes = phaseType.ListPhaseTypes();
            ViewBag.listPhaseTypesDll = new SelectList(listPhaseTypes, "Phase_id", "Phase_name");

            var listSpeedConnectionsTypes = speedType.ListSpeedConnectionTypes();
            ViewBag.listSpeedConnectionsTypesDll = new SelectList(listSpeedConnectionsTypes, "Speed_connection_id", "Speed_connection_name");

            var listOfficeScopes = offScop.ListOfficeScopes();
            ViewBag.listOfficeScopesDll = new SelectList(listOfficeScopes, "Office_scope_id", "Office_scope_name");


            return View();
        }
        /// <summary>
        /// /Create a laboratory project, it gets a laboratory object and add it in the database
        /// </summary>
        /// <param name="laboratory"></param>
        /// <returns>Returns the CreateLabProject view </returns>
        [HttpPost]
        public ActionResult CreateOfficeProject(Offices office)
        {
            var listProjectType = proType.ListProjectTypes();
            ViewBag.listProjectTypeDll = new SelectList(listProjectType, "Project_type_id", "Project_type_name");

            var listPhaseTypes = phaseType.ListPhaseTypes();
            ViewBag.listPhaseTypesDll = new SelectList(listPhaseTypes, "Phase_id", "Phase_name");

            var listSpeedConnectionsTypes = speedType.ListSpeedConnectionTypes();
            ViewBag.listSpeedConnectionsTypesDll = new SelectList(listSpeedConnectionsTypes, "Speed_connection_id", "Speed_connection_name");

            var listOfficeScopes = offScop.ListOfficeScopes();
            ViewBag.listOfficeScopesDll = new SelectList(listOfficeScopes, "Office_scope_id", "Office_scope_name");

            if (office.Office_requestor_id!=null) {

                //Changes the lab project null to 2=Laboratory
                office.Project_type = 1;
                try
                {
                    if (!ModelState.IsValid)
                    {
                        return View();
                    }

                    var officeToAdd = Mapper.Map<DATA.Offices>(office);
                    off.AddOfficeProject(officeToAdd);
                    return RedirectToAction("CreateOfficeProject");
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
    }
}
