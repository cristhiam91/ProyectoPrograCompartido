USE [PmTool]
GO
/****** Object:  Table [dbo].[ConnectionTypes]    Script Date: 21/7/2018 14:17:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConnectionTypes](
	[Connection_type_id] [int] NOT NULL,
	[Connection_type_name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ConnectionTypes] PRIMARY KEY CLUSTERED 
(
	[Connection_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DataCenters]    Script Date: 21/7/2018 14:17:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataCenters](
	[DataCenter_request_id] [int] IDENTITY(1,1) NOT NULL,
	[DataCenter_requestor_id] [int] NULL,
	[Assigned_pm] [varchar](50) NULL,
	[Site_name] [varchar](50) NULL,
	[Program_name] [varchar](50) NULL,
	[Project_name] [varchar](50) NULL,
	[Project_phase] [int] NULL,
	[Request_date] [date] NULL,
	[Expected_date] [date] NULL,
	[Project_budget] [float] NULL,
	[Project_type] [int] NULL,
	[Square_footage] [float] NULL,
	[DataCenter_name] [varchar](50) NULL,
	[Scope] [int] NULL,
	[Total_number_racks] [int] NULL,
	[Total_number_ports_per_rack] [int] NULL,
	[Total_number_copper_ports_per_racks] [int] NULL,
	[Total_number_fiber_ports_per_rack] [int] NULL,
	[Speed_connection] [int] NULL,
	[Project_description] [varchar](100) NULL,
 CONSTRAINT [PK_DataCenters] PRIMARY KEY CLUSTERED 
(
	[DataCenter_request_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DcScopes]    Script Date: 21/7/2018 14:17:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DcScopes](
	[Dc_scope_id] [int] NOT NULL,
	[Dc_scope_name] [varchar](50) NULL,
 CONSTRAINT [PK_DcScopes] PRIMARY KEY CLUSTERED 
(
	[Dc_scope_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FabScopes]    Script Date: 21/7/2018 14:17:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FabScopes](
	[Fab_scope_id] [int] NOT NULL,
	[Fab_scope_name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_FabScopes] PRIMARY KEY CLUSTERED 
(
	[Fab_scope_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Factories]    Script Date: 21/7/2018 14:17:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Factories](
	[Factory_request_id] [int] IDENTITY(1,1) NOT NULL,
	[Factory_requestor_id] [int] NULL,
	[Assigned_pm] [varchar](50) NULL,
	[Site_name] [varchar](50) NULL,
	[Program_name] [varchar](50) NULL,
	[Project_name] [varchar](50) NULL,
	[Project_phase] [int] NULL,
	[Request_date] [date] NULL,
	[Expected_date] [date] NULL,
	[Project_budget] [float] NULL,
	[Project_type] [int] NULL,
	[Factory_name] [varchar](50) NULL,
	[Total_number_bays] [int] NULL,
	[Total_number_ports_per_bay] [int] NULL,
	[Total_number_copper_ports_per_bay] [int] NULL,
	[Total_number_fiber_ports_per_bay] [int] NULL,
	[Speed_connection] [int] NULL,
	[Fab_type] [int] NULL,
	[Square_footage] [float] NULL,
	[Project_description] [varchar](100) NULL,
	[Scope] [int] NULL,
 CONSTRAINT [PK_Factories] PRIMARY KEY CLUSTERED 
(
	[Factory_request_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Labs]    Script Date: 21/7/2018 14:17:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Labs](
	[Lab_request_id] [int] IDENTITY(1,1) NOT NULL,
	[Lab_requestor_id] [int] NULL,
	[Assigned_pm] [varchar](50) NULL,
	[Site_name] [varchar](50) NULL,
	[Program_name] [varchar](50) NULL,
	[Project_name] [varchar](50) NULL,
	[Project_phase] [int] NULL,
	[Request_date] [date] NULL,
	[Expected_date] [date] NULL,
	[Project_budget] [float] NULL,
	[Project_type] [int] NULL,
	[Lab_name] [varchar](50) NULL,
	[Scope] [int] NULL,
	[Square_footage] [float] NULL,
	[Total_number_racks] [int] NULL,
	[Total_number_ports_per_rack] [int] NULL,
	[Total_number_copper_ports_per_racks] [int] NULL,
	[Total_number_fiber_ports_per_rack] [int] NULL,
	[Total_number_benches] [int] NULL,
	[Total_number_ports_per_bench] [int] NULL,
	[Total_number_copper_ports_per_bench] [int] NULL,
	[Total_number_fiber_ports_per_bench] [int] NULL,
	[Speed_connection] [int] NULL,
	[Project_description] [varchar](100) NULL,
 CONSTRAINT [PK_Lab] PRIMARY KEY CLUSTERED 
(
	[Lab_request_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LabScopes]    Script Date: 21/7/2018 14:17:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LabScopes](
	[Lab_scope_id] [int] NOT NULL,
	[Lab_scope_name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_LabScopes] PRIMARY KEY CLUSTERED 
(
	[Lab_scope_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Offices]    Script Date: 21/7/2018 14:17:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Offices](
	[Office_request_id] [int] IDENTITY(1,1) NOT NULL,
	[Office_requestor_id] [int] NULL,
	[Assigned_pm] [varchar](50) NULL,
	[Site_name] [varchar](50) NULL,
	[Program_name] [varchar](50) NULL,
	[Project_name] [varchar](50) NULL,
	[Project_phase] [int] NULL,
	[Request_date] [date] NULL,
	[Expected_date] [date] NOT NULL,
	[Project_budget] [float] NULL,
	[Project_type] [int] NULL,
	[Total_number_workstations] [int] NOT NULL,
	[Total_number_ports_per_workstation] [int] NULL,
	[Speed_connection] [int] NULL,
	[Total_number_workstation_copper_ports] [int] NULL,
	[Total_number_workstation_fiber_ports] [int] NULL,
	[Number_of_auditoriums] [int] NULL,
	[Number_of_A_type_rooms] [int] NULL,
	[Number_of_B_type_rooms] [int] NULL,
	[Number_of_C_type_rooms] [int] NULL,
	[Number_of_Collaboration_rooms] [int] NULL,
	[Number_of_phonebooths] [int] NULL,
	[Square_footage] [float] NULL,
	[Project_description] [varchar](100) NULL,
	[Scope] [int] NULL,
	[Connection] [int] NULL,
 CONSTRAINT [PK_Offices] PRIMARY KEY CLUSTERED 
(
	[Office_request_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OfficeScopes]    Script Date: 21/7/2018 14:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OfficeScopes](
	[Office_scope_id] [int] NOT NULL,
	[Office_scope_name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_OfficeScopes] PRIMARY KEY CLUSTERED 
(
	[Office_scope_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OtherProjects]    Script Date: 21/7/2018 14:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OtherProjects](
	[Other_request_id] [int] IDENTITY(1,1) NOT NULL,
	[Project_description] [varchar](100) NOT NULL,
	[Other_requestor_id] [int] NOT NULL,
	[Other_projectType] [int] NOT NULL,
	[Assigned_pm] [varchar](50) NULL,
 CONSTRAINT [PK_OtherProjects] PRIMARY KEY CLUSTERED 
(
	[Other_request_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhaseTypes]    Script Date: 21/7/2018 14:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhaseTypes](
	[Phase_id] [int] NOT NULL,
	[Phase_name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_PhaseTypes] PRIMARY KEY CLUSTERED 
(
	[Phase_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProjectTypes]    Script Date: 21/7/2018 14:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectTypes](
	[Project_type_id] [int] NOT NULL,
	[Project_type_name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ProjectTypes] PRIMARY KEY CLUSTERED 
(
	[Project_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SpeedConnectionTypes]    Script Date: 21/7/2018 14:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SpeedConnectionTypes](
	[Speed_connection_id] [int] NOT NULL,
	[Speed_connection_name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_SpeedConnectionTypes] PRIMARY KEY CLUSTERED 
(
	[Speed_connection_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 21/7/2018 14:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[User_id] [int] IDENTITY(1,1) NOT NULL,
	[User_name] [varchar](100) NULL,
	[User_type] [int] NULL,
	[User_password] [varchar](100) NULL,
	[User_phone] [varchar](100) NULL,
	[User_email] [varchar](100) NULL,
	[User_age] [int] NULL,
	[User_secure_question_1] [varchar](100) NULL,
	[User_secure_question_2] [varchar](100) NULL,
	[User_secure_question_3] [varchar](100) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[User_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserTypes]    Script Date: 21/7/2018 14:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserTypes](
	[User_type_id] [int] NOT NULL,
	[User_type_name] [varchar](50) NULL,
 CONSTRAINT [PK_UserTypes] PRIMARY KEY CLUSTERED 
(
	[User_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DataCenters]  WITH CHECK ADD  CONSTRAINT [FK_DataCenters_DcScopes] FOREIGN KEY([Scope])
REFERENCES [dbo].[DcScopes] ([Dc_scope_id])
GO
ALTER TABLE [dbo].[DataCenters] CHECK CONSTRAINT [FK_DataCenters_DcScopes]
GO
ALTER TABLE [dbo].[DataCenters]  WITH CHECK ADD  CONSTRAINT [FK_DataCenters_PhaseTypes] FOREIGN KEY([Project_phase])
REFERENCES [dbo].[PhaseTypes] ([Phase_id])
GO
ALTER TABLE [dbo].[DataCenters] CHECK CONSTRAINT [FK_DataCenters_PhaseTypes]
GO
ALTER TABLE [dbo].[DataCenters]  WITH CHECK ADD  CONSTRAINT [FK_DataCenters_ProjectTypes] FOREIGN KEY([Project_phase])
REFERENCES [dbo].[ProjectTypes] ([Project_type_id])
GO
ALTER TABLE [dbo].[DataCenters] CHECK CONSTRAINT [FK_DataCenters_ProjectTypes]
GO
ALTER TABLE [dbo].[DataCenters]  WITH CHECK ADD  CONSTRAINT [FK_DataCenters_SpeedConnectionTypes] FOREIGN KEY([Speed_connection])
REFERENCES [dbo].[SpeedConnectionTypes] ([Speed_connection_id])
GO
ALTER TABLE [dbo].[DataCenters] CHECK CONSTRAINT [FK_DataCenters_SpeedConnectionTypes]
GO
ALTER TABLE [dbo].[Factories]  WITH CHECK ADD  CONSTRAINT [FK_Factories_FabScopes] FOREIGN KEY([Scope])
REFERENCES [dbo].[FabScopes] ([Fab_scope_id])
GO
ALTER TABLE [dbo].[Factories] CHECK CONSTRAINT [FK_Factories_FabScopes]
GO
ALTER TABLE [dbo].[Factories]  WITH CHECK ADD  CONSTRAINT [FK_Factories_PhaseTypes] FOREIGN KEY([Project_phase])
REFERENCES [dbo].[PhaseTypes] ([Phase_id])
GO
ALTER TABLE [dbo].[Factories] CHECK CONSTRAINT [FK_Factories_PhaseTypes]
GO
ALTER TABLE [dbo].[Factories]  WITH CHECK ADD  CONSTRAINT [FK_Factories_ProjectTypes] FOREIGN KEY([Project_phase])
REFERENCES [dbo].[ProjectTypes] ([Project_type_id])
GO
ALTER TABLE [dbo].[Factories] CHECK CONSTRAINT [FK_Factories_ProjectTypes]
GO
ALTER TABLE [dbo].[Factories]  WITH CHECK ADD  CONSTRAINT [FK_Factories_SpeedConnectionTypes] FOREIGN KEY([Speed_connection])
REFERENCES [dbo].[SpeedConnectionTypes] ([Speed_connection_id])
GO
ALTER TABLE [dbo].[Factories] CHECK CONSTRAINT [FK_Factories_SpeedConnectionTypes]
GO
ALTER TABLE [dbo].[Labs]  WITH CHECK ADD  CONSTRAINT [FK_Labs_LabScopes] FOREIGN KEY([Scope])
REFERENCES [dbo].[LabScopes] ([Lab_scope_id])
GO
ALTER TABLE [dbo].[Labs] CHECK CONSTRAINT [FK_Labs_LabScopes]
GO
ALTER TABLE [dbo].[Labs]  WITH CHECK ADD  CONSTRAINT [FK_Labs_PhaseTypes] FOREIGN KEY([Project_phase])
REFERENCES [dbo].[PhaseTypes] ([Phase_id])
GO
ALTER TABLE [dbo].[Labs] CHECK CONSTRAINT [FK_Labs_PhaseTypes]
GO
ALTER TABLE [dbo].[Labs]  WITH CHECK ADD  CONSTRAINT [FK_Labs_ProjectTypes] FOREIGN KEY([Project_type])
REFERENCES [dbo].[ProjectTypes] ([Project_type_id])
GO
ALTER TABLE [dbo].[Labs] CHECK CONSTRAINT [FK_Labs_ProjectTypes]
GO
ALTER TABLE [dbo].[Labs]  WITH CHECK ADD  CONSTRAINT [FK_Labs_SpeedConnectionTypes] FOREIGN KEY([Speed_connection])
REFERENCES [dbo].[SpeedConnectionTypes] ([Speed_connection_id])
GO
ALTER TABLE [dbo].[Labs] CHECK CONSTRAINT [FK_Labs_SpeedConnectionTypes]
GO
ALTER TABLE [dbo].[Offices]  WITH CHECK ADD  CONSTRAINT [FK_Offices_ConnectionTypes] FOREIGN KEY([Connection])
REFERENCES [dbo].[ConnectionTypes] ([Connection_type_id])
GO
ALTER TABLE [dbo].[Offices] CHECK CONSTRAINT [FK_Offices_ConnectionTypes]
GO
ALTER TABLE [dbo].[Offices]  WITH CHECK ADD  CONSTRAINT [FK_Offices_OfficeScopes] FOREIGN KEY([Scope])
REFERENCES [dbo].[OfficeScopes] ([Office_scope_id])
GO
ALTER TABLE [dbo].[Offices] CHECK CONSTRAINT [FK_Offices_OfficeScopes]
GO
ALTER TABLE [dbo].[Offices]  WITH CHECK ADD  CONSTRAINT [FK_Offices_ProjectTypes] FOREIGN KEY([Project_phase])
REFERENCES [dbo].[ProjectTypes] ([Project_type_id])
GO
ALTER TABLE [dbo].[Offices] CHECK CONSTRAINT [FK_Offices_ProjectTypes]
GO
ALTER TABLE [dbo].[Offices]  WITH CHECK ADD  CONSTRAINT [FK_Offices_SpeedConnectionTypes] FOREIGN KEY([Speed_connection])
REFERENCES [dbo].[SpeedConnectionTypes] ([Speed_connection_id])
GO
ALTER TABLE [dbo].[Offices] CHECK CONSTRAINT [FK_Offices_SpeedConnectionTypes]
GO
ALTER TABLE [dbo].[OtherProjects]  WITH CHECK ADD  CONSTRAINT [FK_OtherProjects_ProjectTypes] FOREIGN KEY([Other_projectType])
REFERENCES [dbo].[ProjectTypes] ([Project_type_id])
GO
ALTER TABLE [dbo].[OtherProjects] CHECK CONSTRAINT [FK_OtherProjects_ProjectTypes]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_UserTypes1] FOREIGN KEY([User_type])
REFERENCES [dbo].[UserTypes] ([User_type_id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_UserTypes1]
GO
/****** Object:  StoredProcedure [dbo].[sp_ListProjects]    Script Date: 21/7/2018 14:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_ListProjects]
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT p.Project_id, p.Requestor_id,p.Assigned_pm,p.Site_name,p.Program_name,p.Project_name,p.Project_phase,p.Request_date,p.Expected_date,p.Project_budget,p.Project_type,p.Project_name, c.Project_type_name FROM Projects p INNER JOIN ProjectTypes c ON p.Project_type = c.Project_type_id;
END
GO
