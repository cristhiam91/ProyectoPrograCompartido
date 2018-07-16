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
    public class DataCenterController : Controller
    {
        IDataCenter dc;
        IProjectType proType;
        IPhaseType phaseType;
        ISpeedConnectionType speedType;
        IDcScope dcScope;
        public DataCenterController()
        {
            dc = new MDataCenter();
            proType = new MProjectType();
            phaseType = new MPhaseType();
            speedType = new MSpeedConnectionType();
            dcScope = new MDcScope();


        }

        public ActionResult Index()
        {
            var listProjects = dc.ListDataCenters();
            var listOfProjectsShow = Mapper.Map<List<Models.DataCenters>>(listProjects);
            return View(listOfProjectsShow);
        }



        public ActionResult CreateDataCenterProject()
        {

            var listProjectType = proType.ListProjectTypes();
            ViewBag.listProjectTypeDll = new SelectList(listProjectType, "Project_type_id", "Project_type_name");

            var listPhaseTypes = phaseType.ListPhaseTypes();
            ViewBag.listPhaseTypesDll = new SelectList(listPhaseTypes, "Phase_id", "Phase_name");

            var listSpeedConnectionsTypes = speedType.ListSpeedConnectionTypes();
            ViewBag.listSpeedConnectionsTypesDll = new SelectList(listSpeedConnectionsTypes, "Speed_connection_id", "Speed_connection_name");

            var listDcScopes = dcScope.ListDataCenterScopes();
            ViewBag.listDcScopesDll = new SelectList(listDcScopes, "Dc_scope_id", "Dc_scope_name");

            return View();
        }
        /// <summary>
        /// /Create a laboratory project, it gets a laboratory object and add it in the database
        /// </summary>
        /// <param name="laboratory"></param>
        /// <returns>Returns the CreateLabProject view </returns>
        [HttpPost]
        public ActionResult CreateDataCenterProject(DataCenters dataCenters)
        {
            var listProjectType = proType.ListProjectTypes();
            ViewBag.listProjectTypeDll = new SelectList(listProjectType, "Project_type_id", "Project_type_name");

            var listPhaseTypes = phaseType.ListPhaseTypes();
            ViewBag.listPhaseTypesDll = new SelectList(listPhaseTypes, "Phase_id", "Phase_name");

            var listSpeedConnectionsTypes = speedType.ListSpeedConnectionTypes();
            ViewBag.listSpeedConnectionsTypesDll = new SelectList(listSpeedConnectionsTypes, "Speed_connection_id", "Speed_connection_name");

            var listDcScopes = dcScope.ListDataCenterScopes();
            ViewBag.listDcScopesDll = new SelectList(listDcScopes, "Dc_scope_id", "Dc_scope_name");

            if (dataCenters.DataCenter_requestor_id!=null) {

                    //Changes the lab project null to 4=DataCenter
                    dataCenters.Project_type = 4;
                    try
                    {
                        if (!ModelState.IsValid)
                        {
                            return View();
                        }

                        var dcToAdd = Mapper.Map<DATA.DataCenters>(dataCenters);
                        dc.AddDataCenter(dcToAdd);
                        return RedirectToAction("CreateDataCenterProject");
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