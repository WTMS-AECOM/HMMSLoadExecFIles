
/****** Object:  Table [dbo].[AUL]    Script Date: 8/12/2019 2:19:04 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[AUL](
	[Id] [uniqueidentifier] NOT NULL,
	[Zone_Code] [varchar](13) NULL,
	[Zone_Description] [varchar](256) NULL,
	[NSN] [varchar](13) NULL,
	[Item_Name] [varchar](256) NULL,
	[Trade_Name] [varchar](256) NULL,
	[Manufacturer_Part_Number] [varchar](256) NULL,
	[Product_MSDS_Number] [varchar](13) NULL,
	[MSDS_Prep_Date] [varchar](22) NULL,
	[Authorization_Expiration_Date] [varchar](22) NULL,
	[Update_Date] [varchar](22) NULL,
	[Active] [varchar](1) NULL,
	[CAGE_Code] [varchar](5) NULL,
	[Updated_By] [varchar](256) NULL,
	[Building_Code] [varchar](13) NULL,
	[Update_Date_2] [varchar](22) NULL,
	[Unit_of_Issue] [varchar](2) NULL,
	[Specification_Number] [varchar](256) NULL,
	[Specification_Type_Grade_Class] [varchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[INV]    Script Date: 8/12/2019 2:19:42 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[INV](
	[Id] [uniqueidentifier] NOT NULL,
	[CAGE_Code] [varchar](5) NULL,
	[Create_Date] [varchar](22) NULL,
	[Create_Username] [varchar](256) NULL,
	[Disposal_Code] [varchar](12) NULL,
	[Hazard_Code] [varchar](1) NULL,
	[UoM] [varchar](3) NULL,
	[Memo] [varchar](256) NULL,
	[Document_Number_Code] [varchar](256) NULL,
	[Expiration_Date] [varchar](22) NULL,
	[Unit_Price] [varchar](13) NULL,
	[Lot_Batch_Number] [varchar](22) NULL,
	[Original_Expiration_Date] [varchar](22) NULL,
	[Original_Quantity] [varchar](13) NULL,
	[Original_UoM] [varchar](3) NULL,
	[Product_State_Code] [varchar](1) NULL,
	[Quantity] [varchar](13) NULL,
	[Status] [varchar](2) NULL,
	[Unit_of_Issue] [varchar](2) NULL,
	[Issue_Point_Code] [varchar](13) NULL,
	[Item_Name] [varchar](256) NULL,
	[Kit_Description] [varchar](256) NULL,
	[Kit_ID_Code] [varchar](13) NULL,
	[Kit_Indicator] [varchar](1) NULL,
	[PNI] [varchar](1) NULL,
	[Kit_Price] [varchar](13) NULL,
	[Manufacturer_Kit_Indicator] [varchar](13) NULL,
	[Manufacturer_Name] [varchar](256) NULL,
	[Manufacturer_Part_Number] [varchar](256) NULL,
	[NSN] [varchar](13) NULL,
	[Product_MSDS_Number] [varchar](13) NULL,
	[Original_Issuepoint_Code] [varchar](13) NULL,
	[Separable] [varchar](1) NULL,
	[Serial_Number] [varchar](22) NULL,
	[Shelf_Bin] [varchar](22) NULL,
	[Trade_Name] [varchar](256) NULL,
	[Update_Date] [varchar](22) NULL,
	[Updated_By] [varchar](256) NULL,
	[Zone_Code] [varchar](13) NULL,
	[Shelf_Life_Code] [varchar](13) NULL,
	[Kgrams_QTY] [varchar](13) NULL,
	[Original_Kgrams_QTY] [varchar](13) NULL,
 CONSTRAINT [INV_PRIMARY_KEY] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


/****** Object:  Table [dbo].[ISU]    Script Date: 8/12/2019 2:20:01 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ISU](
	[Id] [uniqueidentifier] NOT NULL,
	[Unit_Price] [varchar](13) NULL,
	[Issue_Point_Code] [varchar](13) NULL,
	[Date_Out] [varchar](22) NULL,
	[NSN] [varchar](13) NULL,
	[Building_Code] [varchar](13) NULL,
	[Hazard_Code] [varchar](1) NULL,
	[Issue_Group_Sequence] [varchar](13) NULL,
	[Issue_QTY_Out] [varchar](13) NULL,
	[Scale_Indicator] [varchar](1) NULL,
	[UoM] [varchar](3) NULL,
	[Item_Name] [varchar](256) NULL,
	[Memo_Note] [varchar](256) NULL,
	[Job_ID_Code] [varchar](17) NULL,
	[Weight_Out] [varchar](13) NULL,
	[Kit_Indicator] [varchar](1) NULL,
	[Pounds_Out_QTY] [varchar](13) NULL,
	[Supervisor_Code] [varchar](13) NULL,
	[MSDS_Printed_IND] [varchar](1) NULL,
	[Serial_Number] [varchar](22) NULL,
	[Organization_Code] [varchar](256) NULL,
	[Product_MSDS_Number] [varchar](13) NULL,
	[ID_Number] [varchar](13) NULL,
	[Resource_Name] [varchar](256) NULL,
	[Status_Out] [varchar](2) NULL,
	[Trade_Name] [varchar](256) NULL,
	[Update_Date] [varchar](22) NULL,
	[Updated_By] [varchar](256) NULL,
	[Zone_Code] [varchar](13) NULL,
	[Resource_Out_Cd] [varchar](256) NULL,
 CONSTRAINT [ISU_PRIMARY_KEY] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


/****** Object:  Table [dbo].[NOP]    Script Date: 8/12/2019 2:20:14 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[NOP](
	[Id] [uniqueidentifier] NOT NULL,
	[Backorder_Indicator] [varchar](1) NULL,
	[CAGE_Code] [varchar](5) NULL,
	[Credit_Card_Code] [varchar](256) NULL,
	[Delivery_Destination] [varchar](256) NULL,
	[Document_Date] [varchar](4) NULL,
	[Document_Serial_Number] [varchar](256) NULL,
	[Issue_Exception_Code] [varchar](22) NULL,
	[Issue_Point_Code] [varchar](13) NULL,
	[Job_Order_Code] [varchar](256) NULL,
	[Job_Order_Number] [varchar](256) NULL,
	[JOCAS_Number] [varchar](256) NULL,
	[Manufacturer_Serial_Number] [varchar](256) NULL,
	[NSN] [varchar](13) NULL,
	[Order_Activity] [varchar](256) NULL,
	[Order_Command_Code] [varchar](256) NULL,
	[Order_Comments] [varchar](512) NULL,
	[Order_Completion_Date] [varchar](22) NULL,
	[Order_Demand_Code] [varchar](4) NULL,
	[Order_Document_Number] [varchar](22) NULL,
	[Order_Fund_Code] [varchar](256) NULL,
	[Order_Priority] [varchar](2) NULL,
	[Order_QTY] [varchar](13) NULL,
	[Date_Ordered] [varchar](22) NULL,
	[Order_Request_Number] [varchar](13) NULL,
	[Order_Shop_Code] [varchar](256) NULL,
	[Order_Unit_of_Issue] [varchar](2) NULL,
	[Order_Urgency] [varchar](2) NULL,
	[Projected_Delivery_Code] [varchar](256) NULL,
	[Projected_Delivery_Date] [varchar](22) NULL,
	[Request_Delete_Date] [varchar](22) NULL,
	[Request_Status_Code] [varchar](2) NULL,
	[Requisistion_Transaction_Status_Code] [varchar](2) NULL,
	[Distribution_Code] [varchar](256) NULL,
	[Workorder_Number_Ship_To] [varchar](256) NULL,
	[Ship_to_Location] [varchar](22) NULL,
	[SRD] [varchar](256) NULL,
	[Transaction_Exception_Code] [varchar](256) NULL,
	[To_Supply_Date] [varchar](22) NULL,
	[TRIC] [varchar](3) NULL,
	[UJC] [varchar](256) NULL,
	[Update_Date] [varchar](22) NULL,
	[Updated_By] [varchar](256) NULL,
	[Serial_Number_Count] [varchar](22) NULL,
	[Requester_Logon] [varchar](256) NULL,
	[Work_Order_Code] [varchar](256) NULL,
	[Work_Unit_Code] [varchar](256) NULL,
	[Zone_Code] [varchar](13) NULL,
 CONSTRAINT [NOP_PRIMARY_KEY] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


/****** Object:  Table [dbo].[ORD]    Script Date: 8/12/2019 2:20:28 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ORD](
	[Id] [uniqueidentifier] NOT NULL,
	[Issue_Point_Code] [varchar](13) NULL,
	[NSN] [varchar](25) NULL,
	[Order_Comments] [varchar](512) NULL,
	[Order_QTY] [varchar](13) NULL,
	[Date_Ordered] [varchar](22) NULL,
	[Order_Request_Number] [varchar](13) NULL,
	[Ship_to_Location] [varchar](22) NULL,
	[Requester_Logon] [varchar](256) NULL,
	[Zone_Code] [varchar](13) NULL,
	[Order_Priority] [varchar](2) NULL,
	[Job_Order_Number] [varchar](256) NULL,
	[Order_Shop_Code] [varchar](256) NULL,
	[Order_Unit_of_Issue] [varchar](2) NULL,
	[Work_Order_Code] [varchar](256) NULL,
	[Job_Order_Code] [varchar](256) NULL,
	[Order_Document_Number] [varchar](22) NULL,
	[Update_Date] [varchar](22) NULL,
	[Updated_By] [varchar](256) NULL,
	[Order_Completion_Date] [varchar](22) NULL,
	[Request_Status_Code] [varchar](1) NULL,
 CONSTRAINT [ORD_PRIMARY_KEY] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


/****** Object:  Table [dbo].[QOH]    Script Date: 8/12/2019 2:20:40 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[QOH](
	[Id] [uniqueidentifier] NOT NULL,
	[Issue_Point_Code] [varchar](13) NULL,
	[NSN] [varchar](13) NULL,
	[Serial_Number] [varchar](22) NULL,
	[Status] [varchar](2) NULL,
 CONSTRAINT [QOH_PRIMARY_KEY] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


/****** Object:  Table [dbo].[TRN]    Script Date: 8/12/2019 2:20:51 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TRN](
	[Id] [uniqueidentifier] NOT NULL,
	[Received_Date] [varchar](22) NULL,
	[Transfer_Date] [varchar](22) NULL,
	[Transfer_From_Issue_Point] [varchar](13) NULL,
	[Receiving_Issue_Point] [varchar](13) NULL,
	[Serial_Number] [varchar](22) NULL,
	[Transfer_User_Logon] [varchar](256) NULL,
	[Received_User_Logon] [varchar](256) NULL,
 CONSTRAINT [TRN_PRIMARY_KEY] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


/****** Object:  View [dbo].[AUL_VIEW]    Script Date: 8/12/2019 2:21:06 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[AUL_VIEW] AS
SELECT Zone_Code
      ,Zone_Description
      ,NSN
      ,Item_Name
      ,Trade_Name
      ,Manufacturer_Part_Number
      ,Product_MSDS_Number
      ,MSDS_Prep_Date
      ,Authorization_Expiration_Date
      ,Update_Date
      ,Active
      ,CAGE_Code
      ,Updated_By
      ,Building_Code
      ,Update_Date_2
      ,Unit_of_Issue
      ,Specification_Number
      ,Specification_Type_Grade_Class
  FROM dbo.AUL
  GROUP BY Zone_Code
      ,Zone_Description
      ,NSN
      ,Item_Name
      ,Trade_Name
      ,Manufacturer_Part_Number
      ,Product_MSDS_Number
      ,MSDS_Prep_Date
      ,Authorization_Expiration_Date
      ,Update_Date
      ,Active
      ,CAGE_Code
      ,Updated_By
      ,Building_Code
      ,Update_Date_2
      ,Unit_of_Issue
      ,Specification_Number
      ,Specification_Type_Grade_Class
HAVING COUNT(*) >= 1;
GO


/****** Object:  View [dbo].[INV_VIEW]    Script Date: 8/12/2019 2:21:17 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[INV_VIEW] AS
SELECT CAGE_Code
      ,Create_Date
      ,Create_Username
      ,Disposal_Code
      ,Hazard_Code
      ,UoM
      ,Memo
      ,Document_Number_Code
      ,Expiration_Date
      ,Unit_Price
      ,Lot_Batch_Number
      ,Original_Expiration_Date
      ,Original_Quantity
      ,Original_UoM
      ,Product_State_Code
      ,Quantity
      ,Status
      ,Unit_of_Issue
      ,Issue_Point_Code
      ,Item_Name
      ,Kit_Description
      ,Kit_ID_Code
      ,Kit_Indicator
      ,PNI
      ,Kit_Price
      ,Manufacturer_Kit_Indicator
      ,Manufacturer_Name
      ,Manufacturer_Part_Number
      ,NSN
      ,Product_MSDS_Number
      ,Original_Issuepoint_Code
      ,Separable
      ,Serial_Number
      ,Shelf_Bin
      ,Trade_Name
      ,Update_Date
      ,Updated_By
      ,Zone_Code
      ,Shelf_Life_Code
      ,Kgrams_QTY
      ,Original_Kgrams_QTY
  FROM dbo.INV
  Group BY CAGE_Code
      ,Create_Date
      ,Create_Username
      ,Disposal_Code
      ,Hazard_Code
      ,UoM
      ,Memo
      ,Document_Number_Code
      ,Expiration_Date
      ,Unit_Price
      ,Lot_Batch_Number
      ,Original_Expiration_Date
      ,Original_Quantity
      ,Original_UoM
      ,Product_State_Code
      ,Quantity
      ,Status
      ,Unit_of_Issue
      ,Issue_Point_Code
      ,Item_Name
      ,Kit_Description
      ,Kit_ID_Code
      ,Kit_Indicator
      ,PNI
      ,Kit_Price
      ,Manufacturer_Kit_Indicator
      ,Manufacturer_Name
      ,Manufacturer_Part_Number
      ,NSN
      ,Product_MSDS_Number
      ,Original_Issuepoint_Code
      ,Separable
      ,Serial_Number
      ,Shelf_Bin
      ,Trade_Name
      ,Update_Date
      ,Updated_By
      ,Zone_Code
      ,Shelf_Life_Code
      ,Kgrams_QTY
      ,Original_Kgrams_QTY
HAVING COUNT(*) >= 1;
GO


/****** Object:  View [dbo].[ISU_VIEW]    Script Date: 8/12/2019 2:21:30 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[ISU_VIEW] AS
SELECT Unit_Price
      ,Issue_Point_Code
      ,Date_Out
      ,NSN
      ,Building_Code
      ,Hazard_Code
      ,Issue_Group_Sequence
      ,Issue_QTY_Out
      ,Scale_Indicator
      ,UoM
      ,Item_Name
      ,Memo_Note
      ,Job_ID_Code
      ,Weight_Out
      ,Kit_Indicator
      ,Pounds_Out_QTY
      ,Supervisor_Code
      ,MSDS_Printed_IND
      ,Serial_Number
      ,Organization_Code
      ,Product_MSDS_Number
      ,ID_Number
      ,Resource_Name
      ,Status_Out
      ,Trade_Name
      ,Update_Date
      ,Updated_By
      ,Zone_Code
      ,Resource_Out_Cd
  FROM dbo.ISU
  GROUP BY Unit_Price
      ,Issue_Point_Code
      ,Date_Out
      ,NSN
      ,Building_Code
      ,Hazard_Code
      ,Issue_Group_Sequence
      ,Issue_QTY_Out
      ,Scale_Indicator
      ,UoM
      ,Item_Name
      ,Memo_Note
      ,Job_ID_Code
      ,Weight_Out
      ,Kit_Indicator
      ,Pounds_Out_QTY
      ,Supervisor_Code
      ,MSDS_Printed_IND
      ,Serial_Number
      ,Organization_Code
      ,Product_MSDS_Number
      ,ID_Number
      ,Resource_Name
      ,Status_Out
      ,Trade_Name
      ,Update_Date
      ,Updated_By
      ,Zone_Code
      ,Resource_Out_Cd
HAVING COUNT(*) >= 1;
GO

/****** Object:  View [dbo].[NOP_VIEW]    Script Date: 8/12/2019 2:21:43 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[NOP_VIEW] AS
SELECT Backorder_Indicator
      ,CAGE_Code
      ,Credit_Card_Code
      ,Delivery_Destination
      ,Document_Date
      ,Document_Serial_Number
      ,Issue_Exception_Code
      ,Issue_Point_Code
      ,Job_Order_Code
      ,Job_Order_Number
      ,JOCAS_Number
      ,Manufacturer_Serial_Number
      ,NSN
      ,Order_Activity
      ,Order_Command_Code
      ,Order_Comments
      ,Order_Completion_Date
      ,Order_Demand_Code
      ,Order_Document_Number
      ,Order_Fund_Code
      ,Order_Priority
      ,Order_QTY
      ,Date_Ordered
      ,Order_Request_Number
      ,Order_Shop_Code
      ,Order_Unit_of_Issue
      ,Order_Urgency
      ,Projected_Delivery_Code
      ,Projected_Delivery_Date
      ,Request_Delete_Date
      ,Request_Status_Code
      ,Requisistion_Transaction_Status_Code
      ,Distribution_Code
      ,Workorder_Number_Ship_To
      ,Ship_to_Location
      ,SRD
      ,Transaction_Exception_Code
      ,To_Supply_Date
      ,TRIC
      ,UJC
      ,Update_Date
      ,Updated_By
      ,Serial_Number_Count
      ,Requester_Logon
      ,Work_Order_Code
      ,Work_Unit_Code
      ,Zone_Code
  FROM dbo.NOP
  GROUP BY Backorder_Indicator
      ,CAGE_Code
      ,Credit_Card_Code
      ,Delivery_Destination
      ,Document_Date
      ,Document_Serial_Number
      ,Issue_Exception_Code
      ,Issue_Point_Code
      ,Job_Order_Code
      ,Job_Order_Number
      ,JOCAS_Number
      ,Manufacturer_Serial_Number
      ,NSN
      ,Order_Activity
      ,Order_Command_Code
      ,Order_Comments
      ,Order_Completion_Date
      ,Order_Demand_Code
      ,Order_Document_Number
      ,Order_Fund_Code
      ,Order_Priority
      ,Order_QTY
      ,Date_Ordered
      ,Order_Request_Number
      ,Order_Shop_Code
      ,Order_Unit_of_Issue
      ,Order_Urgency
      ,Projected_Delivery_Code
      ,Projected_Delivery_Date
      ,Request_Delete_Date
      ,Request_Status_Code
      ,Requisistion_Transaction_Status_Code
      ,Distribution_Code
      ,Workorder_Number_Ship_To
      ,Ship_to_Location
      ,SRD
      ,Transaction_Exception_Code
      ,To_Supply_Date
      ,TRIC
      ,UJC
      ,Update_Date
      ,Updated_By
      ,Serial_Number_Count
      ,Requester_Logon
      ,Work_Order_Code
      ,Work_Unit_Code
      ,Zone_Code
HAVING COUNT(*) >= 1;
GO

/****** Object:  View [dbo].[ORD_VIEW]    Script Date: 8/12/2019 2:21:58 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[ORD_VIEW] AS
SELECT Issue_Point_Code
      ,NSN
      ,Order_Comments
      ,Order_QTY
      ,Date_Ordered
      ,Order_Request_Number
      ,Ship_to_Location
      ,Requester_Logon
      ,Zone_Code
      ,Order_Priority
      ,Job_Order_Number
      ,Order_Shop_Code
      ,Order_Unit_of_Issue
      ,Work_Order_Code
      ,Job_Order_Code
      ,Order_Document_Number
      ,Update_Date
      ,Updated_By
      ,Order_Completion_Date
      ,Request_Status_Code
  FROM dbo.ORD
  GROUP BY Issue_Point_Code
      ,NSN
      ,Order_Comments
      ,Order_QTY
      ,Date_Ordered
      ,Order_Request_Number
      ,Ship_to_Location
      ,Requester_Logon
      ,Zone_Code
      ,Order_Priority
      ,Job_Order_Number
      ,Order_Shop_Code
      ,Order_Unit_of_Issue
      ,Work_Order_Code
      ,Job_Order_Code
      ,Order_Document_Number
      ,Update_Date
      ,Updated_By
      ,Order_Completion_Date
      ,Request_Status_Code
HAVING COUNT(*) >= 1;
GO

/****** Object:  View [dbo].[QOH_VIEW]    Script Date: 8/12/2019 2:22:11 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[QOH_VIEW] AS
SELECT Issue_Point_Code
      ,NSN
      ,Serial_Number
      ,Status
  FROM dbo.QOH
  GROUP BY Issue_Point_Code
      ,NSN
      ,Serial_Number
      ,Status
HAVING COUNT(*) >= 1;
GO

/****** Object:  View [dbo].[TRN_VIEW]    Script Date: 8/12/2019 2:22:23 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[TRN_VIEW] AS
SELECT Received_Date
      ,Transfer_Date
      ,Transfer_From_Issue_Point
      ,Receiving_Issue_Point
      ,Serial_Number
      ,Transfer_User_Logon
      ,Received_User_Logon
  FROM dbo.TRN
  GROUP BY Received_Date
      ,Transfer_Date
      ,Transfer_From_Issue_Point
      ,Receiving_Issue_Point
      ,Serial_Number
      ,Transfer_User_Logon
      ,Received_User_Logon
HAVING COUNT(*) >= 1;
GO

