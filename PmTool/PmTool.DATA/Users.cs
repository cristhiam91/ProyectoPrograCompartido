﻿using ServiceStack.DataAnnotations;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PmTool.DATA
{
    public class Users
    {
        [AutoIncrement]
        
        public int User_id { get; set; }

        public string User_name { get; set; }

        public int User_type { get; set; }

        public string User_password { get; set; }

        public int User_phone { get; set; }

        public string User_email { get; set; }

        public int User_age { get; set; }

        public string User_secure_question_1 { get; set; }

        public string User_secure_question_2 { get; set; }

        public string User_secure_question_3 { get; set; }

    }
}
