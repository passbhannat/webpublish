USE [Productivity]
GO
/****** Object:  Table [dbo].[Master_Activity]    Script Date: 13-04-2020 11:06:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Master_Activity](
	[ActivityCode] [varchar](40) NOT NULL,
	[ActivityName] [varchar](200) NULL,
	[ProjectCode] [varchar](40) NULL,
	[CustomerCode] [varchar](40) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Master_Activity] PRIMARY KEY CLUSTERED 
(
	[ActivityCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Master_Customer]    Script Date: 13-04-2020 11:06:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Master_Customer](
	[CustomerCode] [varchar](40) NOT NULL,
	[CustomerName] [varchar](200) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Master_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Master_Department]    Script Date: 13-04-2020 11:06:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Master_Department](
	[DepartmentCode] [varchar](40) NOT NULL,
	[DepartmentName] [varchar](200) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Master_Department] PRIMARY KEY CLUSTERED 
(
	[DepartmentCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Master_Employee]    Script Date: 13-04-2020 11:06:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Master_Employee](
	[EmployeeCode] [varchar](40) NOT NULL,
	[EmployeeName] [varchar](200) NULL,
	[DepartmentCode] [varchar](40) NULL,
	[MobileNo] [varchar](50) NULL,
	[SupervisorEmployeeCode] [varchar](40) NULL,
	[CustomerCode] [varchar](40) NULL,
	[ProjectCode] [varchar](40) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Master_Employee] PRIMARY KEY CLUSTERED 
(
	[EmployeeCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Master_Project]    Script Date: 13-04-2020 11:06:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Master_Project](
	[ProjectCode] [varchar](40) NOT NULL,
	[ProjectName] [varchar](100) NULL,
	[CustomerCode] [varchar](40) NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Master_Project] PRIMARY KEY CLUSTERED 
(
	[ProjectCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Transaction_Attendance]    Script Date: 13-04-2020 11:06:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Transaction_Attendance](
	[AttendanceID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[EmployeeCode] [varchar](40) NULL,
	[PunchDate] [datetime] NULL,
	[PunchIn] [varchar](40) NULL,
	[PunchOut] [varchar](40) NULL,
 CONSTRAINT [PK_Transaction_Attendance] PRIMARY KEY CLUSTERED 
(
	[AttendanceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Transaction_TaskAllocation]    Script Date: 13-04-2020 11:06:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Transaction_TaskAllocation](
	[TaskAllocationID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[CustomerCode] [varchar](40) NULL,
	[ProjectCode] [varchar](40) NULL,
	[ActivityCode] [varchar](40) NULL,
	[HourlyTarget] [int] NULL,
	[DailyTarget] [int] NULL,
	[CreatedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
	[Status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[TaskAllocationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Transaction_TaskUpdation]    Script Date: 13-04-2020 11:06:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Transaction_TaskUpdation](
	[TaskUpdationID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[EmployeeCode] [varchar](40) NULL,
	[ProjectCode] [varchar](40) NULL,
	[ActivityCode] [varchar](40) NULL,
	[TransactionCompleted] [int] NULL,
	[TaskDate] [date] NULL,
	[TimeIn] [varchar](40) NULL,
	[TimeOut] [varchar](40) NULL,
 CONSTRAINT [PK_Transaction_TaskUpdation] PRIMARY KEY CLUSTERED 
(
	[TaskUpdationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
