USE [MyPortions]
GO
/****** Object:  StoredProcedure [Food].[Ingredients_Upsert]    Script Date: 14/01/2019 15:57:54 ******/
DROP PROCEDURE [Food].[Ingredients_Upsert]
GO
/****** Object:  StoredProcedure [Food].[Ingredients_List]    Script Date: 14/01/2019 15:57:54 ******/
DROP PROCEDURE [Food].[Ingredients_List]
GO
ALTER TABLE [Food].[Meal] DROP CONSTRAINT [FK_Meal_Ingredient]
GO
ALTER TABLE [Food].[Meal] DROP CONSTRAINT [FK_Meal_Dish]
GO
ALTER TABLE [Food].[Meal] DROP CONSTRAINT [FK_Meal_Diary]
GO
ALTER TABLE [Food].[Ingredient] DROP CONSTRAINT [FK_Ingredient_Icons]
GO
ALTER TABLE [Food].[Ingredient] DROP CONSTRAINT [FK_Ingredient_Groups]
GO
ALTER TABLE [Food].[DishIngredients] DROP CONSTRAINT [FK_DishIngredients_Ingredient]
GO
ALTER TABLE [Food].[DishIngredients] DROP CONSTRAINT [FK_DishIngredients_Dish]
GO
ALTER TABLE [Food].[Diary] DROP CONSTRAINT [FK_Diary_Users]
GO
ALTER TABLE [Diet].[Weight] DROP CONSTRAINT [FK_Weight_Users]
GO
ALTER TABLE [Diet].[Recommendations] DROP CONSTRAINT [FK_Recommendations_Users]
GO
ALTER TABLE [Diet].[Recommendations] DROP CONSTRAINT [FK_Recommendations_Groups]
GO
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserLogins] DROP CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserClaims] DROP CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
/****** Object:  Table [Food].[Meal]    Script Date: 14/01/2019 15:57:54 ******/
DROP TABLE [Food].[Meal]
GO
/****** Object:  Table [Food].[Ingredient]    Script Date: 14/01/2019 15:57:54 ******/
DROP TABLE [Food].[Ingredient]
GO
/****** Object:  Table [Food].[Groups]    Script Date: 14/01/2019 15:57:54 ******/
DROP TABLE [Food].[Groups]
GO
/****** Object:  Table [Food].[DishIngredients]    Script Date: 14/01/2019 15:57:54 ******/
DROP TABLE [Food].[DishIngredients]
GO
/****** Object:  Table [Food].[Dish]    Script Date: 14/01/2019 15:57:54 ******/
DROP TABLE [Food].[Dish]
GO
/****** Object:  Table [Food].[Diary]    Script Date: 14/01/2019 15:57:54 ******/
DROP TABLE [Food].[Diary]
GO
/****** Object:  Table [Diet].[Weight]    Script Date: 14/01/2019 15:57:54 ******/
DROP TABLE [Diet].[Weight]
GO
/****** Object:  Table [Diet].[Recommendations]    Script Date: 14/01/2019 15:57:54 ******/
DROP TABLE [Diet].[Recommendations]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 14/01/2019 15:57:54 ******/
DROP TABLE [dbo].[AspNetUsers]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 14/01/2019 15:57:54 ******/
DROP TABLE [dbo].[AspNetUserRoles]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 14/01/2019 15:57:54 ******/
DROP TABLE [dbo].[AspNetUserLogins]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 14/01/2019 15:57:54 ******/
DROP TABLE [dbo].[AspNetUserClaims]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 14/01/2019 15:57:54 ******/
DROP TABLE [dbo].[AspNetRoles]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 14/01/2019 15:57:54 ******/
DROP TABLE [dbo].[__MigrationHistory]
GO
/****** Object:  Table [Core].[Users]    Script Date: 14/01/2019 15:57:54 ******/
DROP TABLE [Core].[Users]
GO
/****** Object:  Table [Core].[Icons]    Script Date: 14/01/2019 15:57:54 ******/
DROP TABLE [Core].[Icons]
GO
/****** Object:  Schema [Food]    Script Date: 14/01/2019 15:57:54 ******/
DROP SCHEMA [Food]
GO
/****** Object:  Schema [Diet]    Script Date: 14/01/2019 15:57:54 ******/
DROP SCHEMA [Diet]
GO
/****** Object:  Schema [Core]    Script Date: 14/01/2019 15:57:54 ******/
DROP SCHEMA [Core]
GO
/****** Object:  Schema [Advice]    Script Date: 14/01/2019 15:57:54 ******/
DROP SCHEMA [Advice]
GO
/****** Object:  Schema [Advice]    Script Date: 14/01/2019 15:57:54 ******/
CREATE SCHEMA [Advice]
GO
/****** Object:  Schema [Core]    Script Date: 14/01/2019 15:57:54 ******/
CREATE SCHEMA [Core]
GO
/****** Object:  Schema [Diet]    Script Date: 14/01/2019 15:57:54 ******/
CREATE SCHEMA [Diet]
GO
/****** Object:  Schema [Food]    Script Date: 14/01/2019 15:57:54 ******/
CREATE SCHEMA [Food]
GO
/****** Object:  Table [Core].[Icons]    Script Date: 14/01/2019 15:57:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Core].[Icons](
	[IconId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Icon] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Icons] PRIMARY KEY CLUSTERED 
(
	[IconId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Core].[Users]    Script Date: 14/01/2019 15:57:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Core].[Users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](200) NOT NULL,
	[FirstName] [varchar](100) NOT NULL,
	[LastName] [varchar](100) NOT NULL,
	[FullName]  AS (case when isnull([FirstName],'')='' OR isnull([LastName],'')='' then [Email] else ([FirstName]+' ')+[LastName] end),
	[Gender] [char](1) NOT NULL,
	[DateofBirth] [date] NOT NULL,
	[Height] [decimal](18, 2) NULL,
	[CalorieGoal] [int] NULL,
	[WeightGoal] [decimal](18, 2) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 14/01/2019 15:57:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 14/01/2019 15:57:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 14/01/2019 15:57:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 14/01/2019 15:57:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 14/01/2019 15:57:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 14/01/2019 15:57:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Diet].[Recommendations]    Script Date: 14/01/2019 15:57:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Diet].[Recommendations](
	[UserId] [int] NOT NULL,
	[GroupId] [int] NOT NULL,
	[Portions] [int] NULL,
	[Calories] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Diet].[Weight]    Script Date: 14/01/2019 15:57:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Diet].[Weight](
	[UserId] [int] NOT NULL,
	[Date] [date] NOT NULL,
	[Weight] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Weight] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[Date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Food].[Diary]    Script Date: 14/01/2019 15:57:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Food].[Diary](
	[DiaryId] [int] IDENTITY(1,1) NOT NULL,
	[Date] [date] NOT NULL,
	[Meal] [char](1) NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_Diary] PRIMARY KEY CLUSTERED 
(
	[DiaryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Food].[Dish]    Script Date: 14/01/2019 15:57:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Food].[Dish](
	[DishId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](max) NOT NULL,
	[Serves] [int] NOT NULL,
 CONSTRAINT [PK_Dish] PRIMARY KEY CLUSTERED 
(
	[DishId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Food].[DishIngredients]    Script Date: 14/01/2019 15:57:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Food].[DishIngredients](
	[DishId] [int] NOT NULL,
	[IngredientId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Food].[Groups]    Script Date: 14/01/2019 15:57:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Food].[Groups](
	[GroupId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](max) NOT NULL,
	[RecommendedMen] [int] NULL,
	[RecommendedWomen] [int] NULL,
	[AvgCaloriesPortion] [int] NULL,
 CONSTRAINT [PK_Groups] PRIMARY KEY CLUSTERED 
(
	[GroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Food].[Ingredient]    Script Date: 14/01/2019 15:57:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Food].[Ingredient](
	[IngredientId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](max) NOT NULL,
	[FoodGroup] [int] NOT NULL,
	[Grammes] [int] NULL,
	[Millilitres] [int] NULL,
	[PortionDescription] [varchar](100) NULL,
	[Icon] [int] NULL,
	[Calories] [int] NULL,
 CONSTRAINT [PK_Ingredient] PRIMARY KEY CLUSTERED 
(
	[IngredientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Food].[Meal]    Script Date: 14/01/2019 15:57:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Food].[Meal](
	[DiaryId] [int] NOT NULL,
	[DishId] [int] NULL,
	[IngredientId] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201901110953365_InitialCreate', N'MyPortions.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5CDB6EE436127D5F60FF41D05376E1B47CC90C668D7602A76DEF1A195F30ED09F236604BECB63012A588946363912FDB877C527E618B1275E345976EB9BB1D0408DC62F154B15864158BC5F9F37F7F4C7F780E03EB0927D48FC8997D3439B42D4CDCC8F3C9EACC4ED9F2DB0FF60FDFFFFD6FD34B2F7CB67E2EE84E381DF424F4CC7E642C3E751CEA3EE210D149E8BB4944A3259BB851E8202F728E0F0FFFE51C1D3918206CC0B2ACE9A794303FC4D90FF8398B888B6396A2E026F27040C577689967A8D62D0A318D918BCFEC9B97FB286120059DE4C4B6751EF8080499E360695B889088214E70FA99E2394B22B29AC7F001050F2F3106BA250A2816E29F56E47D477278CC47E2541D0B2837A52C0A07021E9D08D53872F7B5146C97AA03E55D8292D90B1F75A6C033FBDAC3D9A74F51000A90199ECE828413838E4B16E734BEC56C52749CE4905709C0FD16255F2775C403AB77BF83D2948E2787FCBF036B96062C4DF019C1294B507060DDA78BC0777FC22F0FD1574CCE4E8E16CB930FEFDE23EFE4FD77F8E45D7DA43056A06B7C804FF74914E30464C3CB72FCB6E534FB3972C7B25BAD4FAE15B0255815B675839E3F62B2628FB05E8E3FD8D695FF8CBDE28B30AECFC48745049D5892C2CFDB3408D022C065BBD3CA93FFBF85EBF1BBF7A370BD454FFE2A9B7A893F2C9C04D6D5271C64ADF4D18FF3E5D598EF2F82EC2A8942FEBB695F79EB977994262E1F4C64247940C90AB3A67453A732DE5E26CDA1C637EB0275FF4D9B4BAA9AB796940F689D9550B0D8F66A28E47D5DBEBD2DEE3C8E61F232D3E21A693538D9574DA4CE605725496538477D0D87C080FECAFBE06588FC60848DB007170841967E12E272943F466076880C96F91E510AFB80F71F441F5B44873F47107D8EDD3401F39C3314C6AFCEEDFE3122F8360D17DCEAB7C76BB4A979F82DBA422E8B924BC27B6D8CF73172BF4629BB24DE0562F833730B40FEF3C10FFB038C22CEB9EB624AAFC098B1378B20C22E00AF093B391E0CC7F7A75D0722B300F9A13E129176D22F0569158DE8299488C440A68B4ADA44FD18AD7CD24FD482D42C6A4ED129AA201B2A2A07EB27A9A0340B9A1174CA99538D16E76533347EA097C1EE7FA4B799F336ED053535CE6187C4FFC60427B08D79F788319C906A06FAEC1BBB0816B2E9E34C5FDD37659C7E46413A36ABB55643B6098CBF1A32D8FD5F0D9998F0F9C9F77854D2E3F85310037C2F7AFDC9AA7BCD49926D7B393486B96DE6DBD9034CCBE59CD2C8F5B355A0497C89B445537E88E1ACEE1C463E1A390F02030343F7B9CB832F30365B36AA3B728103CCB075EEE689C119A22EF25435C280BC0182151E552358950F690AF74F8527583A4E7827C40F411456AA4F98BA2C7CE2FA310A3AB524F5ECE9C2F8D84B1E72CB058E31E10C3B35D187B93EFDC10528F94893D2A5A1A953B3B876433444ADA639EF0A61AB7957B2125BB1C98ED8D96097227E7B15C36CD7D8168CB35D257D0430A6F27661A0E2ACD2D700E483CBBE19A874623218A808A9B662A04D8DEDC0409B2A7973069A1F51FBCEBF745EDD37F36C1E94B7EFD65BD5B503DB6CE863CF4C338F3DA10F831E3851CDF362C11BF133D31CCE404E713EA322D4954D8483CF316BA66CAA78571B873AED20B211B5015686D6012A2E01152065410D10AEC8E5B54A27A28801B045DEAD1556ECFD126CCD0654ECFA65688DD07C652A1B67AFD34739B2D21A1423EF7558A8E1680C42DEBC9A03EFA114535E56554C9F587848345C1B98988C16057544AE06251583195D4B8569766B4917900D09C936D292143E19B4540C66742D091BED569226281810166CA4A2A60B1F69B115998ED2DB946D53272F91121FA68EA1966A7A83E2D827AB5A6D95F862CDF3C2AAD9B7F3E12547618EE1B8545379544A5B7262518256586A05D620E9959F507681185A209EE79979A142A6F5AD86EDBF6059779FEA24167EA0A0E67FE73DD4ABFB86AB556311017105030C79409365D135D3AFEF6EF1523714A04493B89F45411A12737C65EE9D5FDFD5FBE75F5484A923C9AFC44F8AB29428B7A9F95EF3A2AE8971E6A88C5ED69F27338449DB45EC59D7B7291E35A314E9A93A8A2965B5B37933853143E64A0E10874F5527C2EBAC2A51955207109F0662D40A1B14B05A5B7FD466ED491DB3D9D21F512A30A9434A4D03A4AC97913484AC37AC8567D0A89EA23F07B570A48EAEB6F647D69490D4A135CD6B606B6496DBFAA36AAA4CEAC09AE6FED855C989BC87EEB1DF321E5BD6755CF9C17633CF65C0789D0D711CC757BBBFAF03D53E0FC41237F40A98F8BE97C6643CDDAD6B4C793A633363326098F79DC6C57773DB69BDAD3763366EB31B5B7BDB6DBE196F98C9BEAA6128673B99A4E45E9EF1A4B3DC549CABBA1FCF2807AD9CC4B60A35825B7FA10C87134E3099FF1ACC021FF34DBC20B841C45F62CAF20A0E1BCE811FA40738FBF318C6A1D40B34E752D38B98E69C6DA1188B3CA1C47D44895A1AB1C183910A54C93A5F130F3F9FD9FFCD7A9D66090CFE57F6F9C0BAA69F89FF6B0A0D0F498AADDFD552CF710AE87B3CD92805FDFD4DBC85E8AFF2EB5FBEE45D0FACBB0496D3A97528297A9DE96FBE9018244DDE750369D67E37F176575BE3598216555A2DEBBF4258F86C9417088594DF84E8F91F4345D3BE32D80851F392602CBC5154687A29B00E96F19580073F59F64A60D860F5AF06D611CDF862C027C3C1E4F702FDB7A1A2E70EFD90E6BCB48D2D29D37367BDF546C597BBF64D4A59F6460B5D2DBD1E00376A79F56621CA1B2B5B1ECD756AAA9247C3DEA5DDBF7A29F2BE541F5741FB6E8B8EB75967DC729BF4972A2FDE8382384D81CFEE8B88B76D6BA604F09E57620E2B15DE3363136E7EF705C1DB3636538278CF8D6D50D9EF9ED9DAAEFCE78E2DADB70BDD7911AF5A8F64B8C8D16591BB8A74F3943B1CFF171118411E51E66F2BF555616D15AD1D0C2B12335373399ACC5859380A5F85A29DEDB0B10A87DF3A5841D3CED650C4D9C65BECFFADBC054D3B6F4369E42ECA8BB5C589BA92EF8E7DACAD76EA2D95133746D251BDDE15B3B6DECABFA5EAE15194D2583D86DBE5B7532C3C8A4AC65C3A038A83D58B62F09DB57F8B11FC37F5571504FF971909761B5EB3A4B926CBA870DE9244058994A1B9C10C79E052CF13E62F91CBA09927A0B3C7E159528F5F832CB0774DEE5216A70C868CC345D04878F120A08D7F5601DD94797A1767F511630C01C4F479E2FE8EFC98FA8157CA7DA5C9091920787421D2BD7C2E194FFBAE5E4AA4DB88F40412EA2B83A2071CC60180D13B32474F781DD9C0FC3EE215725FAA0CA009A47B229A6A9F5EF86895A0900A8CAA3FFC041BF6C2E7EFFF0FFDD4190F92540000, N'6.2.0-61023')
GO
SET IDENTITY_INSERT [Food].[Groups] ON 
GO
INSERT [Food].[Groups] ([GroupId], [Name], [RecommendedMen], [RecommendedWomen], [AvgCaloriesPortion]) VALUES (1, N'Fruit and Vegetables', 5, 5, 40)
GO
INSERT [Food].[Groups] ([GroupId], [Name], [RecommendedMen], [RecommendedWomen], [AvgCaloriesPortion]) VALUES (2, N'Starchy Carbohydrates', 8, 7, 80)
GO
INSERT [Food].[Groups] ([GroupId], [Name], [RecommendedMen], [RecommendedWomen], [AvgCaloriesPortion]) VALUES (3, N'Proteins', 3, 2, 140)
GO
INSERT [Food].[Groups] ([GroupId], [Name], [RecommendedMen], [RecommendedWomen], [AvgCaloriesPortion]) VALUES (4, N'Dairy', 3, 3, 90)
GO
INSERT [Food].[Groups] ([GroupId], [Name], [RecommendedMen], [RecommendedWomen], [AvgCaloriesPortion]) VALUES (5, N'Fats', 2, 1, 50)
GO
INSERT [Food].[Groups] ([GroupId], [Name], [RecommendedMen], [RecommendedWomen], [AvgCaloriesPortion]) VALUES (6, N'Extras', NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [Food].[Groups] OFF
GO
SET IDENTITY_INSERT [Food].[Ingredient] ON 
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (1, N'Raspberries (fruit)', 1, 160, NULL, N'Handful', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (2, N'Red and White Grapes', 1, 67, NULL, N'Fifteen medium grapes', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (3, N'Strawberries', 1, 148, NULL, N'Handful', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (4, N'Banana', 1, 42, NULL, N'Half a standard size banana', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (5, N'Dried apricots', 1, 25, NULL, N'Three apricots', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (6, N'Kiwi', 1, 82, NULL, N'One kiwi', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (7, N'Clementine', 1, 108, NULL, N'One and a half clementines', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (8, N'Tinned Fruit (in fruit juice)', 1, 138, NULL, N'Half a small tin', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (9, N'Melon', 1, 143, NULL, N'One sixth of a melon', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (10, N'Orange Juice (from concentrate)', 1, 111, NULL, N'Half a small glass', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (11, N'Broccoli (boiled)', 1, 167, NULL, N'Ten medium florettes', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (12, N'Frozen Mixed Vegetables (boiled)', 1, 96, NULL, N'Three dessert spoons', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (13, N'Carrots (boiled)', 1, 167, NULL, N'Two large carrots', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (14, N'Cabbage (boiled)', 1, 250, NULL, N'One large plateful', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (15, N'Tomatoes (canned)', 1, 200, NULL, N'Half a tin', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (16, N'Cauliflower (boiled)', 1, 143, NULL, N'Seven medium florettes', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (17, N'Frozen Peas (boiled)', 1, 58, NULL, N'Two dessert spoons', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (18, N'Canned Vegetable Soup', 1, 83, NULL, N'Half a tin', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (19, N'Butternut Squash', 1, 111, NULL, NULL, NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (21, N'Parsnips (boiled)', 1, 63, NULL, N'One parsnip', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (22, N'Mixed Salad', 1, 333, NULL, N'One large plateful', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (23, N'Tomatoes', 1, 235, NULL, N'Two large tomatoes', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (24, N'Mixed Peppers (raw)', 1, 180, NULL, N'One and a half peppers', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (26, N'Onion', 1, 110, NULL, N'One small onion', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (27, N'Avocado', 1, 21, NULL, N'One quarter of an avocado', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (28, N'Mushrooms', 1, 300, NULL, NULL, NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (29, N'Green Beans', 1, 166, NULL, NULL, NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (30, N'Beetroot (boiled)', 1, 87, NULL, N'One beetroot', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (31, N'Wholemeal Bread', 2, 37, NULL, N'One thin slice', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (32, N'Wholemeal Roll', 2, 33, NULL, N'Half a roll', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (33, N'Chapatti (made with fat)', 2, 24, NULL, N'Half a chapatti', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (34, N'Chapatti (made without fat)', 2, 40, NULL, N'One whole chapatti', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (35, N'Wholemeal Pitta Bread', 2, 33, NULL, N'Half a pitta bread', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (36, N'Plain Bagel', 2, 29, NULL, N'Third of a bagel', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (37, N'Tortilla', 2, 23, NULL, N'Half a large tortilla or one small tortilla', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (38, N'Fusilli Pasta (uncooked)', 2, 24, NULL, N'Two dessert spoons', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (39, N'Cous Cous (uncooked)', 2, 50, NULL, N'Two dessert spoons', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (40, N'Egg Noodles (uncooked)', 2, 50, NULL, N'Half a slab', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (41, N'Spaghetti (uncooked)', 2, 23, NULL, NULL, NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (42, N'White Rice (uncooked)', 2, 21, NULL, N'One dessert spoon', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (43, N'Baked Potato', 2, 104, NULL, N'Half a medium baking potato', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (44, N'Mashed Potato (with milk)', 2, 135, NULL, N'Three heaped dessert spoons', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (45, N'New Potatoes (boiled)', 2, 121, NULL, N'Three and a half egg sized potatoes', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (46, N'Chunky Oven Chips', 2, 49, NULL, N'Four large chips', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (47, N'Sweet Potato (boiled)', 2, 95, NULL, NULL, NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (48, N'Bran Flakes', 2, 24, NULL, N'Three dessert spoons', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (49, N'Wheat Biscuits', 2, NULL, NULL, N'One biscuit', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (50, N'Muesli (sugar-free)', 2, 23, NULL, N'One small ramekin', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (51, N'Porridge Oats (uncooked)', 2, 21, NULL, N'Three dessert spoons', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (52, N'Fruit Scone', 2, 22, NULL, N'Half a scone', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (53, N'Multigrain Rye Crisp Bread', 2, 22, NULL, N'Two slices', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (54, N'Cream Crackers', 2, 19, NULL, N'Three crackers', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (55, N'Rice Cakes', 2, 21, NULL, N'Three large rice cakes', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (56, N'Cheddar Cheese (full-fat)', 4, 22, NULL, NULL, NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (57, N'Cheddar Cheese (reduced-fat)', 4, 33, NULL, NULL, NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (58, N'Edam Cheese', 4, 26, NULL, N'One small triangle', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (59, N'Parmesan Cheese (grated)', 4, 22, NULL, N'Three dessert spoons', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (60, N'Cottage Cheese (reduced-fat)', 4, 89, NULL, N'Four dessert spoons', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (61, N'Fruit yoghurt (low-fat)', 4, 115, NULL, N'One small pot', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (62, N'Milk (semi-skimmed)', 4, NULL, 142, N'Third of a pint', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (63, N'Milk (skimmed)', 4, NULL, 284, N'Half a pint', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (64, N'Natural Yoghurt (fat-free)', 4, 150, NULL, N'One small pot', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (65, N'Minced Beef (extra-lean)', 3, 79, NULL, N'Four heaped dessert spoons', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (66, N'Back Bacon (grilled)', 3, 45, NULL, N'Two rashers', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (67, N'Sausage (grilled)', 3, 60, NULL, N'One sausage', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (68, N'Pork Loin Chop', 3, 76, NULL, N'One small chop', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (69, N'Ham (cooked)', 3, 130, NULL, N'Two large slices', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (70, N'Steak (braised)', 3, 62, NULL, N'Small steak', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (71, N'Corned Beef', 3, 68, NULL, N'Two slices', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (72, N'Chicken Breast (grilled)', 3, 95, NULL, N'Small chicken breast', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (73, N'Lentils (boiled)', 3, 133, NULL, N'Four heaped dessert spoons', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (74, N'Baked Beans', 3, 167, NULL, N'Four heaped dessert spoons', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (75, N'Kidney Beans', 3, 150, NULL, N'Five dessert spoons', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (76, N'Haddock (breaded)', 3, 74, NULL, N'Half a fillet', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (77, N'Haddock (unbreaded)', 3, 157, NULL, N'One medium fillet', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (78, N'Salmon (grilled)', 3, 65, NULL, N'One small fillet', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (79, N'Cod (baked)', 3, 146, NULL, N'One small loin', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (80, N'Mackerel (smoked)', 3, 40, NULL, N'Half a fillet', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (81, N'Canned Tuna (in brine or water, drained)', 3, 141, NULL, N'One medium tin', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (82, N'Canned Sardines (in brine, drained)', 3, 120, NULL, N'One medium tin', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (83, N'Prawns (boiled)', 3, 140, NULL, NULL, NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (85, N'Eggs (boiled)', 3, 95, NULL, N'Two medium eggs', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (86, N'Quorn Mince (dry fried)', 3, 152, NULL, N'Ten dessert spoons', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (87, N'Hummus (reduced-fat)', 3, NULL, NULL, N'Two heaped tea spoons', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (88, N'Olive Spread', 5, NULL, NULL, N'One tea spoon', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (89, N'Butter', 5, NULL, NULL, N'One tea spoon', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (90, N'Spread (reduced-fat)', 5, 14, NULL, N'Two tea spoons', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (91, N'Single Cream', 5, 26, NULL, N'Two dessert spoons', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (92, N'Double Cream', 5, 11, NULL, N'One dessert spoon', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (93, N'Salad Cream (full-fat)', 5, 14, NULL, N'Two tea spoons', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (94, N'Salad Cream (reduced-fat)', 5, 26, NULL, N'Three tea spoons', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (95, N'Ceaser Dressing', 5, 10, NULL, N'One dessert spoon', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (96, N'French Dressing (full-fat)', 5, 11, NULL, N'One dessert spoon', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (97, N'French Dressing (reduced-fat)', 5, 31, NULL, N'Three dessert spoons', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (98, N'Vegetable Oil', 5, 6, NULL, N'One tea spoon', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (99, N'Mayonnaise (full-fat)', 5, 7, NULL, N'One tea spoon', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (100, N'Mayonnaise (reduced-fat)', 5, 17, NULL, N'Two tea spoons', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (101, N'Peanut Butter', 5, 8, NULL, N'One teaspoon', NULL, NULL)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (102, N'Jar of Salsa', 6, 122, NULL, N'Half a jar', NULL, 50)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (103, N'Gravy (from granules)', 6, NULL, 150, NULL, NULL, 50)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (104, N'Tomato Ketchup', 6, 45, NULL, N'Two dessert spoons', NULL, 50)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (105, N'Brown Sauce', 6, 52, NULL, N'Two dessert spoons', NULL, 50)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (106, N'Relish', 6, 50, NULL, N'Two dessert spoons', NULL, 50)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (107, N'Sweet Chilli Sauce', 6, 22, NULL, N'Two tea spoons', NULL, 50)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (108, N'Natural Yoghurt (fat-free)', 6, 80, NULL, NULL, NULL, 50)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (109, N'Snack Size Cheese (light)', 6, 21, NULL, N'One "bell"', NULL, 50)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (110, N'Apple', 6, 106, NULL, N'One apple', NULL, 50)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (111, N'Green Olives', 6, 49, NULL, N'Fifteen small olives', NULL, 50)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (112, N'Raisins', 6, 18, NULL, N'One dessert spoon', NULL, 50)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (113, N'Fig Biscuit', 6, 16, NULL, N'One fig biscuit', NULL, 50)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (114, N'Rich Tea Biscuit', 6, 11, NULL, N'One rich tea', NULL, 50)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (115, N'Baked Crisps', 6, 37, NULL, N'One packet', NULL, 150)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (116, N'Plain Scone', 6, 41, NULL, N'One small scone', NULL, 150)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (117, N'Jam', 6, 16, NULL, N'One tea spoon of jam', NULL, 150)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (118, N'Red or White Wine', 6, NULL, 175, N'One medium glass', NULL, 150)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (119, N'Breakfast Cereal Bar', 6, 42, NULL, N'One bar', NULL, 150)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (120, N'Jaffa Cakes', 6, 35, NULL, N'Three jaffas', NULL, 150)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (121, N'Milk Chocolate', 6, 29, NULL, N'Three squares', NULL, 150)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (122, N'Crisps (reduced-fat)', 6, 22, NULL, NULL, NULL, 100)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (123, N'Pesto', 6, 50, NULL, N'Two heaped teaspoons', NULL, 100)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (124, N'White Sauce', 6, 75, NULL, N'One ramekin', NULL, 100)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (125, N'Yoghurt (virtually fat-free)', 6, 167, NULL, N'One pot', NULL, 100)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (126, N'Plain Digestive Biscuit', 6, 22, NULL, N'One digestive', NULL, 100)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (127, N'Ice Cream', 6, 56, NULL, N'One scoop', NULL, 100)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (128, N'Peanuts (plain)', 6, 27, NULL, N'Two dessert spoons', NULL, 150)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (129, N'Chocolate Egg', 6, 40, NULL, N'One egg', NULL, 200)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (130, N'Beer', 6, NULL, 568, N'One pint', NULL, 200)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (131, N'Ice Cream Cone (cornetto)', 6, 70, NULL, N'One cone', NULL, 200)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (132, N'Rice Pudding', 6, 187, NULL, N'One pot', NULL, 200)
GO
INSERT [Food].[Ingredient] ([IngredientId], [Name], [FoodGroup], [Grammes], [Millilitres], [PortionDescription], [Icon], [Calories]) VALUES (133, N'Mixed Seeds', 6, 34, NULL, N'Three dessert spoons', NULL, 200)
GO
SET IDENTITY_INSERT [Food].[Ingredient] OFF
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [Diet].[Recommendations]  WITH CHECK ADD  CONSTRAINT [FK_Recommendations_Groups] FOREIGN KEY([GroupId])
REFERENCES [Food].[Groups] ([GroupId])
GO
ALTER TABLE [Diet].[Recommendations] CHECK CONSTRAINT [FK_Recommendations_Groups]
GO
ALTER TABLE [Diet].[Recommendations]  WITH CHECK ADD  CONSTRAINT [FK_Recommendations_Users] FOREIGN KEY([UserId])
REFERENCES [Core].[Users] ([UserId])
GO
ALTER TABLE [Diet].[Recommendations] CHECK CONSTRAINT [FK_Recommendations_Users]
GO
ALTER TABLE [Diet].[Weight]  WITH CHECK ADD  CONSTRAINT [FK_Weight_Users] FOREIGN KEY([UserId])
REFERENCES [Core].[Users] ([UserId])
GO
ALTER TABLE [Diet].[Weight] CHECK CONSTRAINT [FK_Weight_Users]
GO
ALTER TABLE [Food].[Diary]  WITH CHECK ADD  CONSTRAINT [FK_Diary_Users] FOREIGN KEY([UserId])
REFERENCES [Core].[Users] ([UserId])
GO
ALTER TABLE [Food].[Diary] CHECK CONSTRAINT [FK_Diary_Users]
GO
ALTER TABLE [Food].[DishIngredients]  WITH CHECK ADD  CONSTRAINT [FK_DishIngredients_Dish] FOREIGN KEY([DishId])
REFERENCES [Food].[Dish] ([DishId])
GO
ALTER TABLE [Food].[DishIngredients] CHECK CONSTRAINT [FK_DishIngredients_Dish]
GO
ALTER TABLE [Food].[DishIngredients]  WITH CHECK ADD  CONSTRAINT [FK_DishIngredients_Ingredient] FOREIGN KEY([IngredientId])
REFERENCES [Food].[Ingredient] ([IngredientId])
GO
ALTER TABLE [Food].[DishIngredients] CHECK CONSTRAINT [FK_DishIngredients_Ingredient]
GO
ALTER TABLE [Food].[Ingredient]  WITH CHECK ADD  CONSTRAINT [FK_Ingredient_Groups] FOREIGN KEY([FoodGroup])
REFERENCES [Food].[Groups] ([GroupId])
GO
ALTER TABLE [Food].[Ingredient] CHECK CONSTRAINT [FK_Ingredient_Groups]
GO
ALTER TABLE [Food].[Ingredient]  WITH CHECK ADD  CONSTRAINT [FK_Ingredient_Icons] FOREIGN KEY([Icon])
REFERENCES [Core].[Icons] ([IconId])
GO
ALTER TABLE [Food].[Ingredient] CHECK CONSTRAINT [FK_Ingredient_Icons]
GO
ALTER TABLE [Food].[Meal]  WITH CHECK ADD  CONSTRAINT [FK_Meal_Diary] FOREIGN KEY([DiaryId])
REFERENCES [Food].[Diary] ([DiaryId])
GO
ALTER TABLE [Food].[Meal] CHECK CONSTRAINT [FK_Meal_Diary]
GO
ALTER TABLE [Food].[Meal]  WITH CHECK ADD  CONSTRAINT [FK_Meal_Dish] FOREIGN KEY([DishId])
REFERENCES [Food].[Dish] ([DishId])
GO
ALTER TABLE [Food].[Meal] CHECK CONSTRAINT [FK_Meal_Dish]
GO
ALTER TABLE [Food].[Meal]  WITH CHECK ADD  CONSTRAINT [FK_Meal_Ingredient] FOREIGN KEY([IngredientId])
REFERENCES [Food].[Ingredient] ([IngredientId])
GO
ALTER TABLE [Food].[Meal] CHECK CONSTRAINT [FK_Meal_Ingredient]
GO
/****** Object:  StoredProcedure [Food].[Ingredients_List]    Script Date: 14/01/2019 15:57:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [Food].[Ingredients_List] (
    @IngredientId int = null
) as

select
    i.IngredientId,
    i.Name,
    FoodGroup = fg.Name,
    Portion = case
        when i.Grammes is not null then cast(i.Grammes as varchar(10)) + 'g'
        when i.Millilitres is not null then cast(i.Millilitres as varchar(10)) + 'ml'
    end,
    i.PortionDescription,
    Calories = isnull(i.Calories, fg.AvgCaloriesPortion)
from
    Food.Ingredient i
    join Food.Groups fg on i.FoodGroup = fg.GroupId

GO
/****** Object:  StoredProcedure [Food].[Ingredients_Upsert]    Script Date: 14/01/2019 15:57:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [Food].[Ingredients_Upsert] (
    @IngredientId int = null,
    @Name varchar(max),
    --@FoodGroup int,
    @Grammes int = null,
    @Millilitres int = null,
    @PortionDescription varchar(100) = null,
    @Calories int = null
) as

if not exists (select * from Food.Ingredient where IngredientId = @IngredientId)
begin

    insert into Food.Ingredient(Name, Grammes, Millilitres, PortionDescription, Icon, Calories)
    values (@Name, @Grammes, @Millilitres, @PortionDescription, null, @Calories)

end

else 

begin

    update Food.Ingredient set
        Name = @Name
    where
        IngredientId = @IngredientId

end
GO
