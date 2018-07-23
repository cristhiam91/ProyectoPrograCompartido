﻿using PmTool.DAL.Metodos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using PmTool.DATA;
namespace PmTool.DAL.Interfaces
{
    public interface ILab
    {
        List<Labs> ListLabs();
        void AddLabs(Labs lab);
        Labs SearchLabProject(int labProjectId);
        void UpdateLabProject(Labs lab);
        void DeleteLabProject(int labProjectId);
    }
}
