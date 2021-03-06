USE [paginaMIC]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 14/11/2016 13.31.13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[articulos_contenido]    Script Date: 14/11/2016 13.31.13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[articulos_contenido](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_title] [varchar](max) NOT NULL,
	[titulo] [varchar](max) NOT NULL,
	[subtitulo] [varchar](max) NULL,
	[contenido] [text] NULL,
	[parent_id] [int] NULL,
	[image_presentation_1] [varchar](max) NULL,
	[image_presentation_2] [varchar](max) NULL,
	[fecha] [datetime] NULL CONSTRAINT [DF_articulos_contenido_fecha]  DEFAULT (getdate()),
	[fecha_publicacion] [datetime] NULL,
	[tags] [varchar](max) NULL,
	[avalible_edit] [bit] NULL,
	[avalible_childrens] [bit] NULL,
 CONSTRAINT [PK_articulos_contenido] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[articulos_contenido_media]    Script Date: 14/11/2016 13.31.14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[articulos_contenido_media](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[media_id] [int] NULL,
	[articulos_contenido_id] [int] NULL,
 CONSTRAINT [PK_articulos_contenido_media] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 14/11/2016 13.31.14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Discriminator] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 14/11/2016 13.31.14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[User_Id] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 14/11/2016 13.31.15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[UserId] [nvarchar](128) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 14/11/2016 13.31.15 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 14/11/2016 13.31.15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[UserName] [nvarchar](max) NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Discriminator] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [dbo].[banners]    Script Date: 14/11/2016 13.31.16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[banners](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[url] [varchar](max) NULL,
	[image_url] [varchar](max) NULL,
	[active] [bit] NULL,
 CONSTRAINT [PK_banners] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[cambio_combustible]    Script Date: 14/11/2016 13.31.16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cambio_combustible](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [nvarchar](128) NULL,
	[fecha] [datetime] NULL CONSTRAINT [DF_cambio_combustible_fecha]  DEFAULT (getdate()),
	[titulo] [varchar](100) NULL,
	[tasa_cambio] [varchar](50) NULL,
	[file_combustible] [varchar](max) NULL,
	[file_gas_natural] [varchar](max) NULL,
 CONSTRAINT [PK_cambio_combustible] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[cambio_combustible_precio]    Script Date: 14/11/2016 13.31.16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cambio_combustible_precio](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_cambio_combustible] [int] NULL,
	[id_combustible] [char](5) NULL,
	[precio] [varchar](50) NULL,
 CONSTRAINT [PK_cambio_combustible_precio] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[combustible]    Script Date: 14/11/2016 13.31.17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[combustible](
	[id] [char](5) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[descripcion] [text] NULL,
	[activo] [bit] NULL,
	[position] [int] NULL,
 CONSTRAINT [PK_combustible] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Files]    Script Date: 14/11/2016 13.31.17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Files](
	[Id] [uniqueidentifier] NOT NULL,
	[RowId] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Original] [nvarchar](50) NOT NULL,
	[Type] [nvarchar](25) NOT NULL,
	[Size] [bigint] NOT NULL,
	[UploadTime] [datetime] NOT NULL,
	[Data] [varbinary](max) NULL,
	[Preview] [varbinary](max) NULL,
	[Path] [nvarchar](512) NOT NULL,
	[Meta] [varbinary](512) NULL,
	[media_album_id] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Files] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[informacion_pagina]    Script Date: 14/11/2016 13.31.17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[informacion_pagina](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[titulo] [varchar](100) NULL,
	[logo_url] [varchar](max) NULL,
	[telefono1] [varchar](50) NULL,
	[telefono2] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[direccion] [varchar](max) NULL,
 CONSTRAINT [PK_informacion_pagina] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[media]    Script Date: 14/11/2016 13.31.18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[media](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](max) NULL,
	[url] [varchar](max) NULL,
	[type] [varchar](50) NULL,
	[size] [int] NULL,
	[thumb] [varchar](max) NULL,
	[isServer] [bit] NULL,
	[articulo_contenido_id] [int] NOT NULL,
	[delete_url] [varchar](max) NULL,
	[type_name] [varchar](50) NULL,
 CONSTRAINT [PK_media] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[media_album]    Script Date: 14/11/2016 13.31.18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[media_album](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_titulo] [varchar](50) NOT NULL,
	[titulo] [varchar](50) NOT NULL,
	[width] [int] NULL,
	[height] [int] NULL,
	[media_tipo_id] [int] NOT NULL,
 CONSTRAINT [PK_media_album] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[media_album_user]    Script Date: 14/11/2016 13.31.18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[media_album_user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[media_album_id] [int] NOT NULL,
	[usuario_id] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_media_album_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [dbo].[media_combustible]    Script Date: 14/11/2016 13.31.18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[media_combustible](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[cambio_combustible_id] [int] NULL,
	[url] [varchar](max) NULL,
	[type] [varchar](50) NULL,
	[size] [int] NULL,
	[name] [varchar](max) NULL,
 CONSTRAINT [PK_media_combustible] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[media_tipo]    Script Date: 14/11/2016 13.31.19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[media_tipo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tipo] [nvarchar](10) NULL,
 CONSTRAINT [PK_media_tipo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [dbo].[slideshow]    Script Date: 14/11/2016 13.31.19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[slideshow](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[url_image] [varchar](max) NULL,
	[text_html] [varchar](max) NULL,
	[id_articulo] [int] NULL,
	[active] [bit] NULL,
	[type] [varchar](50) NULL,
	[size] [int] NULL,
	[isServer] [bit] NULL,
	[type_name] [varchar](50) NULL,
	[thumb] [varchar](max) NULL,
	[titulo] [varchar](250) NULL,
	[descripcion] [varchar](max) NULL,
	[posicion] [int] NULL,
 CONSTRAINT [PK_slideshow] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201402130341319_init', N'AspNetExtendingIdentityRoles.Migrations.Configuration', 0x1F8B0800000000000400DD5CCB6EDC3614DD17E83F085A250532B29D4D1ACC2470C6766B34B6038F936D404B9C31518952458E3BFEB62EFA49FD85927A5222295123691ED91836459EFBE0E1257575E9FFFEF977FA7113F8D6338C090AF1CC3E9D9CD816C46EE821BC9AD96BBA7CF3CEFEF8E1E79FA6975EB0B1BEE5FDDEF27E6C242633FB89D2E8BDE310F70906804C02E4C621099774E2868103BCD0393B39F9D5393D752083B01996654DEFD798A200267FB03FE721766144D7C0BF093DE893AC9D3D5924A8D62D082089800B67F639896E21BDDC5088B992D71E6450F4E53EF42199A4C36DEBDC4780A9B680FED2B600C621059429FEFE2B810B1A8778B5885803F01F5E22C8FA2D814F6066D0FBB2BBA96D2767DC36A71CB8956FECC26A66F7656214572FB19D991D453E7213746EAA6D7D0204F2E7A99513D10F2212C3FA1287118CE94B867401891BA328D53343A03173A56DDD80CD678857F46966B35F6DEB0A6DA097B7644EFA8A11A3071B44E335FBD311B5764AB51B8D6950F60FF8526910F4BF87CB627C5530175D1F58379B8FD15A7B7AF6CEC8DADBB5EF83471F16CF9D4699FCE7BE7C2C1086B13ED6122679D868C5158A091DC8948E0EFC0CF625F93200C81F5B6CE705C3276BEE0314EC7ED55C63FAF64C618F105D17348CE16F10C31850E87D0194C21897CAB7B93C318C0B1B78C968247D03FE7A0451B7E019AD127FD484A6ABF01EFAC943F28422C54A4C34FB9E76BD8AC3804748C5F4273DBE2FC275EC7213C2C66E0F205E413A00F37EE450CDED1B215CCB82BE0042FE0E63EF77409E4617B680EE3A66B3B7A0208876C8F5847D6458B6E7346E617BBE284C55FD1CAE106E5735E9D6A86AD9A35155A15B575593336EABA6BC57A3A24587463DCB5E2A35B78A1F89E9DB04113E580E24CAAE890CD6FC8C3CEE0183117967A649F750956BB6EB70553373D7E22B3E1B5D78BF2DB5D3CA6DDA52150BBCF792D8F60DA8C38AE022B6D985F745ED5CDFFDD12A7DC13609B369CF86309BFC682255D94BC5A9DEE4EFB019B46AD999F9E784842E4AD4D3ED06DF15E7CA4BEC59668B54FD369B6E33D6CDDAA788BF03B3E699FD8BE4D85631C5EEA87969AE4938B5EB6BF10E5F401F52689DBB693A690E880B3C9989CC7F5EB5852D5F187359C09FB3C9A5314098CA6B1D611745C037B2A336DAF0B4CEB52BE4D49F5CC008622ED468BE4C14D0C635A79055735D9BA7A68E4043737696CBDB84358AB5AE264D1A30B6A3A61C2A74F9BF8366A664C68E8929CD95897CF526BA2F5E1A074D45741F8997C71F312533F6C1CBA38D97C2ABBC096754592C3569D274E796D454A50F76CD4DAD43D343139B04CAA600C672DEFEE2913F841B2AB9940F5C405ACD0B948730E59E2039AC0A22B9AD095198980EB06D889DC0F2BC4D23627614EC00DBE6CB3258D64085496E50383B8B0B9D9BDF58EB24343E1B1736AABD26C50BE3D3B00658C2ACD09E75EFE82DE1F5AAD9599A835A87A39AC6A28C09869E920F6702AC126A080799B0497362E8706618CE41FB609298646EF6946E0FEBB28B698CCA23AAA1B314FBD600DECADFD38B2DA7783675D2428BAC61EA682A32A637208A105E09151A598BB548CB33E66F16DDAB1F8214C37189A208A2D0B69044C318AC60ED2913CD344DBE555F000A1E01CFF8CCBD40EAD66583CD458AFBAC3C83F95691F7E6BF679B797BB1CAA45ED9211FFB32DC2B6675C0CF8EC97756051FD4C32D5E45037C102BBEB2CD437F1D60FD51563FBA524522C2541E28F198CF3D941C23934FB08ADA960A1EE27801C28059AD429C3A35FF4847616986BA4CE135E1BFDF2D5F99CCA5D8F8FA486632FDEA298E4F5B76EEE9AE0E3E3CFF4ACCAE9EC0774AEBFC7919C58C625C756F1931D6A9B6D90E33A81E3ECE0A110AA04410A1D91CABAC6812A1CA5673A4AC424984C99A3A47DDF47074F451979BD127EAEE92535C96CC83B2D51CA95A5022A2559F9823D6AA4644C8DAA383DE230E33C268F7883D2CC201F688ECC566CC3954143C769E480DC6386B5B2864144184E68E5859A9A20496B51F2431B24CD398C450D41375268606A3296CD7C9A1CBC1EB516AD53B95934073FD921EB3529253D905F4F54D07429571DEAB9BCB6C3A13A5DB2BC3303CC9BF3A8A28BA2F91E3CF6435AFD4B2256409B79E513F43E91CD9795A4D0AE94DE935D99946FB4202A1FEFE2668B0B572DA0F815B6F5A7ABDEA7943990252FAB0DEA520609146ACA50BA759EAAEFD969794CB4BBBD8561ECDD851F48550184C7887C9E22F7FEE23E6C3B2C30DC06809097D08FF8478669F9D9C9ED5EE856D7147CB21C4F39B2F6AE9530CBB2898C7CF20769F402C17CCF5B8BA9483BE0AC0E6B588645282AEB86ED60FAF7A28EE65F691DC82186C52CBD7CB0126427591A117A0F2B2422F44E9E65A2FB4FA65B45E6095FB65C7BD20F674210DF168DF7AE5ACE30A91EEA0F59A1AF99E592FB8E2B4B1FB39FEE1AF6E0C16639537330643575CBCD8250D8EE6BAC2600EAFDE4618D8D78316C8EFA7ECB2A16EA86F817EEF8ACEBD94BC1F57D9A679997BFA09731F15E7FA7AA29EE5CCBD08A649298D5E22FC2397AB1F5208DB37BFF611C08CF97530F1AB63D9F921112CAB9FEE57F67E7414D37DCC53734C935B1D9C64B5C466FEFA2615146A3E6DA8527F6DE5F8694273667B8F2123417A744C73E4EA6A619DB094BD5A6159025D2B4C5D43DA242C6366A3C4AC4FB358754D6C7BD1BF59CD7FB36C751D7CEBCD00A38B01CD92D5B3BBCFDB03DADAE26ED7049AEF1C1CC3F5007186E572C12E85EE8D35F3C77211A03F2F76ED8A114BFDFB3BA31237359F3147A9E5973FBAB19D52F8078C6CBF26685542F012250CDDCA1E59F4B9C6CB30DFAB6B1AE55D6A19941B4881C736D0F398A22570297BEC424292FFEA9095405D068FD0BBC6776B1AAD293319068F7E25A3C7B7FC26F9C98585AACED3BBE49B1319C204A6266226C03BFC698D7CAFD0FB4A91EAD140F0B34496A7E6734979BE7AF55220DD86D81028735F71047A8041E43330728717E019EA756BF761D563D30B045631084886518E677F32FA79C1E6C3FF16BA6DED42540000, N'6.0.0-20911')
SET IDENTITY_INSERT [dbo].[articulos_contenido] ON 

INSERT [dbo].[articulos_contenido] ([id], [id_title], [titulo], [subtitulo], [contenido], [parent_id], [image_presentation_1], [image_presentation_2], [fecha], [fecha_publicacion], [tags], [avalible_edit], [avalible_childrens]) VALUES (50, N'Sobre-Nosotros', N'Sobre Nosotros', N'Historia, Origen y Evolución del Ministerio de Industria y Comercio', N'<p>El Ministerio de Industria y Comercio tiene sus inicios en el origen mismo de la Rep&uacute;blica. En la primera Carta Magna de la Naci&oacute;n, en el a&ntilde;o 1844, el Poder Ejecutivo se estructur&oacute; con cuatro ministerios y uno de ellos fue el &quot;Ministerio de Hacienda y Comercio&quot;.<br />
<br />
Desde su creaci&oacute;n, este Ministerio ha vivido un proceso de varios cambios, entre los cuales pasamos a resumir los m&aacute;s relevantes:</p>

<ul>
	<li>En el a&ntilde;o 1934, por disposici&oacute;n contenida en la Ley de Secretar&iacute;as de Estado Num. 786 del referido a&ntilde;o, se le denomina &quot;Secretar&iacute;a de Estado de Trabajo, Agricultura e Industria y Comercio&quot;.</li>
	<li>El 31 de mayo de 1935, mediante la Ley Num. 914, se divide en dos nuevas secretar&iacute;as de Estado: &quot;Secretar&iacute;a de Agricultura y Trabajo&quot; y &quot;Secretar&iacute;a de Estado de Comercio e Industria&quot;.</li>
	<li>El 4 de marzo de 1936, mediante la Ley Num. 1074, que modifica la Ley de Secretar&iacute;as de Estado, se establece la &quot;Secretar&iacute;a de Estado de Agricultura&quot; y la &quot;Secretar&iacute;a de Estado de Comercio, Industria y Trabajo&quot; y en los art&iacute;culos 2 y 3 de dicha Ley se transfieren las funciones relativas al trabajo a la Secretar&iacute;a de Comercio, Industria y Trabajo.</li>
	<li>En los a&ntilde;os siguientes, esta Secretar&iacute;a de Estado continu&oacute; siendo objeto de nuevos cambios de denominaci&oacute;n.</li>
	<li>El 15 de diciembre de 1956 se emite el Decreto N&uacute;m. 2306(bis) que, entre otros cambios, en su estructura la denomina como &quot;Secretar&iacute;a de Estado de Industria y Comercio&quot;.</li>
	<li>El 11 de septiembre de 1959, con el Decreto N&uacute;m. 5137 se refunden las secretar&iacute;as de Estado de Agricultura y la de Industria y Comercio en una sola, con la denominaci&oacute;n de &quot;Secretar&iacute;a de Estado de Agricultura y Comercio&quot;. Asimismo, a la &quot;Secretar&iacute;a de Estado de Trabajo&quot;, mediante el mismo decreto, se le denomina &quot;Secretar&iacute;a de Estado de Trabajo e Industria&quot;, separando en dos secretar&iacute;as diferentes las funciones relativas al comercio y la industria, que en ese entonces estaban bajo la jurisdicci&oacute;n de una sola secretar&iacute;a.</li>
	<li>Posteriormente, estas actividades vuelven a estar juntas El 11 de abril de 1961, mediante el Decreto N&uacute;m. 6603, se separa la regulaci&oacute;n de las actividades comerciales e industriales de las secretar&iacute;as enunciadas en el p&aacute;rrafo anterior y crea el Ministerio de Industria y Comercio, lo que adquiere fuerza de Ley el 30 de junio del a&ntilde;o 1966, con la promulgaci&oacute;n de la Ley Org&aacute;nica N&uacute;m. 290-66.&middot;El 12 de agosto de 1966 se dicta su Reglamento Org&aacute;nico y Funcional N&uacute;m. 186, que establece la organizaci&oacute;n interna y las atribuciones espec&iacute;ficas de cada unidad org&aacute;nica del Ministerio de Industria y Comercio.</li>
	<li>En el a&ntilde;o 1971, se crea la &quot;Direcci&oacute;n General de Miner&iacute;a&quot; como una dependencia de la Secretar&iacute;a de Estado de Industria y Comercio, y en los a&ntilde;os subsiguientes se crean la &quot;Comisi&oacute;n Nacional de Pol&iacute;tica Minera&quot;, el &quot;Consejo Nacional de Zonas Francas de Exportaci&oacute;n&quot;, el &quot;Consejo Nacional para la Energ&iacute;a y el Programa de Promoci&oacute;n y Apoyo a la Micro, Peque&ntilde;a y Mediana Empresa&quot;, y se le otorga a esta Secretar&iacute;a de Estado participaci&oacute;n especial en cada una de estas nuevas instituciones. El 2 de octubre del a&ntilde;o 2002, mediante Resoluci&oacute;n N&uacute;m. 338-02, de esta Secretar&iacute;a de Estado de Industria y Comercio, refrendada por la entonces Oficina.</li>
</ul>
', NULL, N'http://www.madzine.com.ar/wp-content/uploads/2015/12/Jared-Leto-Guason-instagram-actor.jpg', N'/Files/find/50?filename=6bghphg2h9w4jwz9kgd2-160224-Superman.jpg', NULL, NULL, N'nosostro', 0, NULL)
INSERT [dbo].[articulos_contenido] ([id], [id_title], [titulo], [subtitulo], [contenido], [parent_id], [image_presentation_1], [image_presentation_2], [fecha], [fecha_publicacion], [tags], [avalible_edit], [avalible_childrens]) VALUES (51, N'Historia', N'Historia', N'Historia', N'<h1>Historia</h1>

<h4>Historia, Origen y Evoluci&oacute;n del Ministerio de Industria y Comercio</h4>

<p>El Ministerio de Industria y Comercio tiene sus inicios en el origen mismo de la Rep&uacute;blica. En la primera Carta Magna de la Naci&oacute;n, en el a&ntilde;o 1844, el Poder Ejecutivo se estructur&oacute; con cuatro ministerios y uno de ellos fue el &quot;Ministerio de Hacienda y Comercio&quot;.<br />
<br />
Desde su creaci&oacute;n, este Ministerio ha vivido un proceso de varios cambios, entre los cuales pasamos a resumir los m&aacute;s relevantes:</p>

<ul>
	<li>En el a&ntilde;o 1934, por disposici&oacute;n contenida en la Ley de Secretar&iacute;as de Estado Num. 786 del referido a&ntilde;o, se le denomina &quot;Secretar&iacute;a de Estado de Trabajo, Agricultura e Industria y Comercio&quot;.</li>
	<li>El 31 de mayo de 1935, mediante la Ley Num. 914, se divide en dos nuevas secretar&iacute;as de Estado: &quot;Secretar&iacute;a de Agricultura y Trabajo&quot; y &quot;Secretar&iacute;a de Estado de Comercio e Industria&quot;.</li>
	<li>El 4 de marzo de 1936, mediante la Ley Num. 1074, que modifica la Ley de Secretar&iacute;as de Estado, se establece la &quot;Secretar&iacute;a de Estado de Agricultura&quot; y la &quot;Secretar&iacute;a de Estado de Comercio, Industria y Trabajo&quot; y en los art&iacute;culos 2 y 3 de dicha Ley se transfieren las funciones relativas al trabajo a la Secretar&iacute;a de Comercio, Industria y Trabajo.</li>
	<li>En los a&ntilde;os siguientes, esta Secretar&iacute;a de Estado continu&oacute; siendo objeto de nuevos cambios de denominaci&oacute;n.</li>
	<li>El 15 de diciembre de 1956 se emite el Decreto N&uacute;m. 2306(bis) que, entre otros cambios, en su estructura la denomina como &quot;Secretar&iacute;a de Estado de Industria y Comercio&quot;.</li>
	<li>El 11 de septiembre de 1959, con el Decreto N&uacute;m. 5137 se refunden las secretar&iacute;as de Estado de Agricultura y la de Industria y Comercio en una sola, con la denominaci&oacute;n de &quot;Secretar&iacute;a de Estado de Agricultura y Comercio&quot;. Asimismo, a la &quot;Secretar&iacute;a de Estado de Trabajo&quot;, mediante el mismo decreto, se le denomina &quot;Secretar&iacute;a de Estado de Trabajo e Industria&quot;, separando en dos secretar&iacute;as diferentes las funciones relativas al comercio y la industria, que en ese entonces estaban bajo la jurisdicci&oacute;n de una sola secretar&iacute;a.</li>
	<li>Posteriormente, estas actividades vuelven a estar juntas El 11 de abril de 1961, mediante el Decreto N&uacute;m. 6603, se separa la regulaci&oacute;n de las actividades comerciales e industriales de las secretar&iacute;as enunciadas en el p&aacute;rrafo anterior y crea el Ministerio de Industria y Comercio, lo que adquiere fuerza de Ley el 30 de junio del a&ntilde;o 1966, con la promulgaci&oacute;n de la Ley Org&aacute;nica N&uacute;m. 290-66.&middot;El 12 de agosto de 1966 se dicta su Reglamento Org&aacute;nico y Funcional N&uacute;m. 186, que establece la organizaci&oacute;n interna y las atribuciones espec&iacute;ficas de cada unidad org&aacute;nica del Ministerio de Industria y Comercio.</li>
	<li>En el a&ntilde;o 1971, se crea la &quot;Direcci&oacute;n General de Miner&iacute;a&quot; como una dependencia de la Secretar&iacute;a de Estado de Industria y Comercio, y en los a&ntilde;os subsiguientes se crean la &quot;Comisi&oacute;n Nacional de Pol&iacute;tica Minera&quot;, el &quot;Consejo Nacional de Zonas Francas de Exportaci&oacute;n&quot;, el &quot;Consejo Nacional para la Energ&iacute;a y el Programa de Promoci&oacute;n y Apoyo a la Micro, Peque&ntilde;a y Mediana Empresa&quot;, y se le otorga a esta Secretar&iacute;a de Estado participaci&oacute;n especial en cada una de estas nuevas instituciones. El 2 de octubre del a&ntilde;o 2002, mediante Resoluci&oacute;n N&uacute;m. 338-02, de esta Secretar&iacute;a de Estado de Industria y Comercio, refrendada por la entonces Oficina.</li>
</ul>

<h4>MISI&Oacute;N</h4>

<p>Fomentar el desarrollo sostenible de la productividad y competitividad de la industria, el comercio y las PYMES, mediante la formulaci&oacute;n y aplicaci&oacute;n de pol&iacute;ticas p&uacute;blicas.</p>

<h4>VISI&Oacute;N</h4>

<p>Ser reconocida como la instituci&oacute;n l&iacute;der, implementando pol&iacute;ticas p&uacute;blicas efectivas que contribuyan al mejoramiento de la productividad y competitividad, fomentando el desarrollo e innovaci&oacute;n del sector comercial e industrial del pa&iacute;s.</p>
', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[articulos_contenido] ([id], [id_title], [titulo], [subtitulo], [contenido], [parent_id], [image_presentation_1], [image_presentation_2], [fecha], [fecha_publicacion], [tags], [avalible_edit], [avalible_childrens]) VALUES (52, N'Base-Legal', N'Base Legal', N'Base Legal', NULL, 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[articulos_contenido] ([id], [id_title], [titulo], [subtitulo], [contenido], [parent_id], [image_presentation_1], [image_presentation_2], [fecha], [fecha_publicacion], [tags], [avalible_edit], [avalible_childrens]) VALUES (53, N'Mision-y-Vision', N'Misión y Visión', N'Misión y Visión', NULL, 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[articulos_contenido] ([id], [id_title], [titulo], [subtitulo], [contenido], [parent_id], [image_presentation_1], [image_presentation_2], [fecha], [fecha_publicacion], [tags], [avalible_edit], [avalible_childrens]) VALUES (54, N'Estructura-Organizativa', N'Estructura Organizativa', N'Estructura Organizativa', NULL, 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[articulos_contenido] ([id], [id_title], [titulo], [subtitulo], [contenido], [parent_id], [image_presentation_1], [image_presentation_2], [fecha], [fecha_publicacion], [tags], [avalible_edit], [avalible_childrens]) VALUES (55, N'Funciones-Generales', N'Funciones Generales', N'Funciones Generales', NULL, 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[articulos_contenido] ([id], [id_title], [titulo], [subtitulo], [contenido], [parent_id], [image_presentation_1], [image_presentation_2], [fecha], [fecha_publicacion], [tags], [avalible_edit], [avalible_childrens]) VALUES (56, N'Funciones-Generales', N'Funciones Generales', N'Funciones Generales', NULL, 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[articulos_contenido] ([id], [id_title], [titulo], [subtitulo], [contenido], [parent_id], [image_presentation_1], [image_presentation_2], [fecha], [fecha_publicacion], [tags], [avalible_edit], [avalible_childrens]) VALUES (57, N'Instituciones-Vinculadas', N'Instituciones Vinculadas', N'Instituciones Vinculadas', NULL, 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[articulos_contenido] ([id], [id_title], [titulo], [subtitulo], [contenido], [parent_id], [image_presentation_1], [image_presentation_2], [fecha], [fecha_publicacion], [tags], [avalible_edit], [avalible_childrens]) VALUES (59, N'Transparencia', N'Transparencia', N'transparencia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[articulos_contenido] ([id], [id_title], [titulo], [subtitulo], [contenido], [parent_id], [image_presentation_1], [image_presentation_2], [fecha], [fecha_publicacion], [tags], [avalible_edit], [avalible_childrens]) VALUES (61, N'Comercio-Interno', N'Comercio Interno', N'Comercio Interno', N'<p><img alt="" src="/Files/find/61?filename=fmewv2v2g5r8yy7nkjg5-12734115_968413749908879_5954288932493638130_n.jpg" style="height:369px; width:656px" /></p>
', NULL, N'/Files/find/61?filename=valsf8l2xj6dxea9r97h-11390242_10155670565785599_1363742419135749781_n%20%281%29.jpg', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[articulos_contenido] ([id], [id_title], [titulo], [subtitulo], [contenido], [parent_id], [image_presentation_1], [image_presentation_2], [fecha], [fecha_publicacion], [tags], [avalible_edit], [avalible_childrens]) VALUES (62, N'Direcciones', N'Direcciones', N'Hidrocarburos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[articulos_contenido] ([id], [id_title], [titulo], [subtitulo], [contenido], [parent_id], [image_presentation_1], [image_presentation_2], [fecha], [fecha_publicacion], [tags], [avalible_edit], [avalible_childrens]) VALUES (65, N'Base-Legal-de-la-Institucion', N'Base Legal de la Institución', N'Base Legal de la Institución', N'<div class="contenido" id="imprimir">
<div class="btn-tools">&nbsp;</div>

<h1>Base Legal de la Instituci&oacute;n</h1>

<ul>
	<li><a href="/transparencia/base-legal-de-la-institución/constitución-de-la-república-dominicana.aspx">Constituci&oacute;n de la Rep&uacute;blica Dominicana</a></li>
	<li><a href="/transparencia/base-legal-de-la-institución/leyes.aspx">Leyes</a></li>
	<li><a href="/transparencia/base-legal-de-la-institución/decretos.aspx">Decretos</a></li>
	<li><a href="/transparencia/base-legal-de-la-institución/resoluciones.aspx">Resoluciones</a></li>
	<li><a href="/transparencia/base-legal-de-la-institución/reglamentos.aspx">Reglamentos</a></li>
	<li><a href="/transparencia/base-legal-de-la-institución/otras-normativas.aspx">Otras Normativas</a></li>
</ul>
</div>
', 59, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[articulos_contenido] ([id], [id_title], [titulo], [subtitulo], [contenido], [parent_id], [image_presentation_1], [image_presentation_2], [fecha], [fecha_publicacion], [tags], [avalible_edit], [avalible_childrens]) VALUES (66, N'Decretos', N'Decretos', N'Decretos', NULL, 65, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[articulos_contenido] ([id], [id_title], [titulo], [subtitulo], [contenido], [parent_id], [image_presentation_1], [image_presentation_2], [fecha], [fecha_publicacion], [tags], [avalible_edit], [avalible_childrens]) VALUES (1066, N'Hidrocarburos', N'Hidrocarburos', N'Hidrocarburos', N' <h3>
                                <a data-animated-link="fadeOut" href="#">The Psychology of Branding</a></h3>
                                <h4>Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris...</h4>
                                <div class="clear"></div>
                                <p>Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. <a data-animated-link="fadeOut" href="#">Aenean sollicitudin</a>, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet <a data-animated-link="fadeOut" href="#">mauris. Morbi accumsan ipsum</a> velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris...</p>
                                <div class="clear"></div>
                                <div class="clear"></div>
                                <h5 class="uppecase">The Psychology of Branding</h5>
                                <p>Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. <a data-animated-link="fadeOut" href="#">Aenean sollicitudin</a>, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet <a data-animated-link="fadeOut" href="#">mauris. Morbi accumsan ipsum</a> velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris...</p>
                                <div class="clear"></div>
                                <div class="clear"></div>
                                <blockquote class="post-quote">
                                    <p>A designer is an emerging synthesis of artist, inventor, mechanic, objective economist and evolutio&shy;nary strategist. A designer is an emerging synthesis of artist, inventor, mechanic, objective economist and evolutio&shy;nary strategist.</p>
                                </blockquote>
                                <div class="clear"></div>
                                <div class="clear"></div>
                                <p>Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, <a data-animated-link="fadeOut" href="#">nisi elit consequat ipsum</a>, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio.</p>
                                <div class="clear"></div>
                                <div class="clear"></div>
                                <ul class="list-style angle">
                                    <li>Lorem Ipsum. Proin gravida nibh.</li>
                                    <li>Lorem Ipsum. Proin gravida nibh.</li>
                                </ul>
                                <div class="clear"></div>
                                <div class="clear"></div>
                                <blockquote class="blog-style small-quote">
                                    <div class="topaz-border"></div>
                                    <p>“A designer is an emerging synthesis of artist, inventor, mechanic,”</p>
                                    <cite><a data-animated-link="fadeOut" href="#">Buckminster Fuller</a> </cite>
                                </blockquote>
                                <div class="clear"></div>
                                <div class="clear"></div>
                                <p>Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, <a data-animated-link="fadeOut" href="#">nisi elit consequat ipsum</a>, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio.</p>
                                <div class="social-media dima-social-post social-medium">
                                    <div class="addthis_sharing_toolbox"></div>
                                </div>', 62, NULL, NULL, NULL, NULL, N'asdas,asd', 0, NULL)
INSERT [dbo].[articulos_contenido] ([id], [id_title], [titulo], [subtitulo], [contenido], [parent_id], [image_presentation_1], [image_presentation_2], [fecha], [fecha_publicacion], [tags], [avalible_edit], [avalible_childrens]) VALUES (1067, N'Comunicaciones', N'Comunicaciones', N'Comunicaciones', N'<h1>Comunicaciones</h1>

<h4>Objetivo General:</h4>

<p>La Direcci&oacute;n de Comunicaciones es la unidad responsable de asesorar y proponer las pol&iacute;ticas de comunicaci&oacute;n del MIC, as&iacute; como de planificar y coordinar las actividades de divulgaci&oacute;n y difusi&oacute;n de la informaci&oacute;n, tanto a lo interno como a lo externo. Tiene el compromiso de&nbsp; promover y mantener una buena relaci&oacute;n con los medios de comunicaci&oacute;n y periodistas, en procura de asegurar que la opini&oacute;n p&uacute;blica sea eficaz y correctamente informada.</p>

<h4>Funciones Principales:</h4>

<p>a) Dise&ntilde;ar, proponer y poner en funcionamiento las normas y pol&iacute;ticas de comunicaci&oacute;n de la instituci&oacute;n y velar por su ejecuci&oacute;n y cumplimiento.<br />
<br />
b) Planificar e implementar estrategias de comunicaci&oacute;n encaminadas a fortalecer las funciones de la instituci&oacute;n y el logro de sus objetivos.<br />
<br />
c) Impulsar los diferentes procesos de comunicaci&oacute;n desde una perspectiva integral donde toda la actividad est&eacute;&nbsp; centralizada en funci&oacute;n del fortalecimiento y preservaci&oacute;n de la imagen de la instituci&oacute;n.<br />
<br />
d) Evaluar las iniciativas de comunicaci&oacute;n que le sean sugeridas y determinar las conveniencias o no de su aplicaci&oacute;n.<br />
<br />
e) Representar los intereses del MIC en su relaci&oacute;n con las diferentes compa&ntilde;&iacute;as publicitarias contratadas y coordinar con &eacute;stas la ejecuci&oacute;n de la publicidad de la instituci&oacute;n.<br />
<br />
f) Contratar con los medios de comunicaci&oacute;n las publicaciones del MIC en &quot;espacio pagado&quot;.<br />
<br />
g) Coordinar con las dem&aacute;s &aacute;reas las actividades a realizar en materia de comunicaci&oacute;n y difusi&oacute;n de la informaci&oacute;n del Ministerio.<br />
<br />
h) Administrar y promover una buena relaci&oacute;n con los medios de comunicaci&oacute;n, para garantizar y mantener, real y bien informada a la ciudadan&iacute;a.<br />
<br />
i) Mantener con los medios de comunicaci&oacute;n un canal permanente de informaci&oacute;n sobre las actividades de la instituci&oacute;n.</p>
', 62, NULL, NULL, NULL, NULL, N'fsdf,s,df,alexander', NULL, NULL)
INSERT [dbo].[articulos_contenido] ([id], [id_title], [titulo], [subtitulo], [contenido], [parent_id], [image_presentation_1], [image_presentation_2], [fecha], [fecha_publicacion], [tags], [avalible_edit], [avalible_childrens]) VALUES (1068, N'Direccion-de-Comunicaciones', N'Dirección de Comunicaciones', N'Sobre la Dirección de Comunicaciones', N'<ul>
	<li><a href="http://mic.gob.do/direcciones/comunicaciones/direcci%C3%B3n-de-comunicaciones/sobre-la-direcci%C3%B3n.aspx" title="Sobre la Dirección">Sobre la Direcci&oacute;n</a></li>
	<li><a href="http://mic.gob.do/direcciones/comunicaciones/direcci%C3%B3n-de-comunicaciones/perfil-del-funcionario.aspx" title="Perfil del Funcionario">Perfil del Funcionario</a></li>
	<li><a href="http://mic.gob.do/direcciones/comunicaciones/direcci%C3%B3n-de-comunicaciones/contactos-para-servicios.aspx" title="Contactos para Servicios">Contactos para Servicios</a></li>
</ul>
', 1067, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[articulos_contenido] ([id], [id_title], [titulo], [subtitulo], [contenido], [parent_id], [image_presentation_1], [image_presentation_2], [fecha], [fecha_publicacion], [tags], [avalible_edit], [avalible_childrens]) VALUES (1069, N'Sobre-la-Direccion', N'Sobre la Dirección', N'Sobre la Dirección de Comunicaciones', N'<h1>Sobre la Direcci&oacute;n de Comunicaciones</h1>

<h4>Objetivo General:</h4>

<p>La Direcci&oacute;n de Comunicaciones es la unidad responsable de asesorar y proponer las pol&iacute;ticas de comunicaci&oacute;n del MIC, as&iacute; como de planificar y coordinar las actividades de divulgaci&oacute;n y difusi&oacute;n de la informaci&oacute;n, tanto a lo interno como a lo externo. Tiene el compromiso de promover y mantener una buena relaci&oacute;n con los medios de comunicaci&oacute;n y periodistas, en procura de asegurar que la opini&oacute;n p&uacute;blica sea eficaz y correctamente informada.</p>

<h4>Funciones Principales:</h4>

<p>a) Dise&ntilde;ar, proponer y poner en funcionamiento las normas y pol&iacute;ticas de comunicaci&oacute;n de la instituci&oacute;n y velar por su ejecuci&oacute;n y cumplimiento.<br />
<br />
b) Planificar e implementar estrategias de comunicaci&oacute;n encaminadas a fortalecer las funciones de la instituci&oacute;n y el logro de sus objetivos.<br />
<br />
c) Impulsar los diferentes procesos de comunicaci&oacute;n desde una perspectiva integral donde toda la actividad est&eacute; centralizada en funci&oacute;n del fortalecimiento y preservaci&oacute;n de la imagen de la instituci&oacute;n.<br />
<br />
d) Evaluar las iniciativas de comunicaci&oacute;n que le sean sugeridas y determinar las conveniencias o no de su aplicaci&oacute;n.<br />
<br />
e) Representar los intereses del MIC en su relaci&oacute;n con las diferentes compa&ntilde;&iacute;as publicitarias contratadas y coordinar con &eacute;stas la ejecuci&oacute;n de la publicidad de la instituci&oacute;n.<br />
<br />
f) Contratar con los medios de comunicaci&oacute;n las publicaciones del MIC en &quot;espacio pagado&quot;.<br />
<br />
g) Coordinar con las dem&aacute;s &aacute;reas las actividades a realizar en materia de comunicaci&oacute;n y difusi&oacute;n de la informaci&oacute;n del Ministerio.<br />
<br />
h) Administrar y promover una buena relaci&oacute;n con los medios de comunicaci&oacute;n, para garantizar y mantener, real y bien informada a la ciudadan&iacute;a.<br />
<br />
i) Mantener con los medios de comunicaci&oacute;n un canal permanente de informaci&oacute;n sobre las actividades de la instituci&oacute;n.</p>
', 1068, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[articulos_contenido] ([id], [id_title], [titulo], [subtitulo], [contenido], [parent_id], [image_presentation_1], [image_presentation_2], [fecha], [fecha_publicacion], [tags], [avalible_edit], [avalible_childrens]) VALUES (1070, N'-Departamento-de-Relaciones-Publicas', N' Departamento de Relaciones Públicas', N' Sobre el Departamento de Relaciones Públicas', N'<ul>
	<li><a href="http://mic.gob.do/direcciones/comunicaciones/departamento-de-relaciones-p%C3%BAblicas/sobre-el-departamento.aspx">Sobre el Departamento de Relaciones P&uacute;blicas</a></li>
	<li><a href="http://mic.gob.do/direcciones/comunicaciones/departamento-de-relaciones-p%C3%BAblicas/perfil-del-funcionario.aspx">Perfil del Funcionario</a></li>
	<li><a href="http://mic.gob.do/direcciones/comunicaciones/departamento-de-relaciones-p%C3%BAblicas/contactos-para-servicios.aspx">Contactos para Servicios</a></li>
</ul>
', 1067, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[articulos_contenido] ([id], [id_title], [titulo], [subtitulo], [contenido], [parent_id], [image_presentation_1], [image_presentation_2], [fecha], [fecha_publicacion], [tags], [avalible_edit], [avalible_childrens]) VALUES (1071, N'Departamento-de-Prensa', N'Departamento de Prensa', N'Departamento de Prensa', N'<h1>Departamento de Prensa</h1>

<ul>
	<li><a href="http://mic.gob.do/direcciones/comunicaciones/departamento-de-prensa/sobre-el-departamento.aspx">Sobre el Departamento de Prensa</a></li>
	<li><a href="http://mic.gob.do/direcciones/comunicaciones/departamento-de-prensa/perfil-del-funcionario.aspx">Perfil del Funcionario</a></li>
	<li><a href="http://mic.gob.do/direcciones/comunicaciones/departamento-de-prensa/contactos-para-servicios.aspx">Contactos para Servicios</a></li>
</ul>
', 1067, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[articulos_contenido] ([id], [id_title], [titulo], [subtitulo], [contenido], [parent_id], [image_presentation_1], [image_presentation_2], [fecha], [fecha_publicacion], [tags], [avalible_edit], [avalible_childrens]) VALUES (1072, N'Sobre-la-Direccion', N'Sobre la Dirección', N'Sobre la Dirección', N'<h1>Sobre la Direcci&oacute;n de Comunicaciones</h1>

<h4>Objetivo General:</h4>

<p>La Direcci&oacute;n de Comunicaciones es la unidad responsable de asesorar y proponer las pol&iacute;ticas de comunicaci&oacute;n del MIC, as&iacute; como de planificar y coordinar las actividades de divulgaci&oacute;n y difusi&oacute;n de la informaci&oacute;n, tanto a lo interno como a lo externo. Tiene el compromiso de promover y mantener una buena relaci&oacute;n con los medios de comunicaci&oacute;n y periodistas, en procura de asegurar que la opini&oacute;n p&uacute;blica sea eficaz y correctamente informada.</p>

<h4>Funciones Principales:</h4>

<p>a) Dise&ntilde;ar, proponer y poner en funcionamiento las normas y pol&iacute;ticas de comunicaci&oacute;n de la instituci&oacute;n y velar por su ejecuci&oacute;n y cumplimiento.<br />
<br />
b) Planificar e implementar estrategias de comunicaci&oacute;n encaminadas a fortalecer las funciones de la instituci&oacute;n y el logro de sus objetivos.<br />
<br />
c) Impulsar los diferentes procesos de comunicaci&oacute;n desde una perspectiva integral donde toda la actividad est&eacute; centralizada en funci&oacute;n del fortalecimiento y preservaci&oacute;n de la imagen de la instituci&oacute;n.<br />
<br />
d) Evaluar las iniciativas de comunicaci&oacute;n que le sean sugeridas y determinar las conveniencias o no de su aplicaci&oacute;n.<br />
<br />
e) Representar los intereses del MIC en su relaci&oacute;n con las diferentes compa&ntilde;&iacute;as publicitarias contratadas y coordinar con &eacute;stas la ejecuci&oacute;n de la publicidad de la instituci&oacute;n.<br />
<br />
f) Contratar con los medios de comunicaci&oacute;n las publicaciones del MIC en &quot;espacio pagado&quot;.<br />
<br />
g) Coordinar con las dem&aacute;s &aacute;reas las actividades a realizar en materia de comunicaci&oacute;n y difusi&oacute;n de la informaci&oacute;n del Ministerio.<br />
<br />
h) Administrar y promover una buena relaci&oacute;n con los medios de comunicaci&oacute;n, para garantizar y mantener, real y bien informada a la ciudadan&iacute;a.<br />
<br />
i) Mantener con los medios de comunicaci&oacute;n un canal permanente de informaci&oacute;n sobre las actividades de la instituci&oacute;n.</p>
', 1070, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[articulos_contenido] ([id], [id_title], [titulo], [subtitulo], [contenido], [parent_id], [image_presentation_1], [image_presentation_2], [fecha], [fecha_publicacion], [tags], [avalible_edit], [avalible_childrens]) VALUES (1073, N'Sobre-el-Departamento', N'Sobre el Departamento', N'Sobre el Departamento de Prensa', N'<h1>Sobre el Departamento de Prensa</h1>

<h4>Objetivo General:</h4>

<p>El Departamento de Prensa tiene la responsabilidad de coordinar con los medios externos de comunicaci&oacute;n, la difusi&oacute;n de las actividades y prop&oacute;sitos del MIC, velando porque llegue a la ciudadan&iacute;a una informaci&oacute;n veraz y confiable.</p>

<h4>Funciones Principales:</h4>

<p>a) Coordinar con los medios de prensa las coberturas de las diferentes actividades de la Instituci&oacute;n.<br />
<br />
b) Redactar las notas de prensa y remitirlas a la Direcci&oacute;n de Comunicaciones para su aprobaci&oacute;n final.<br />
<br />
c) Participar en la supervisi&oacute;n, elaboraci&oacute;n y edici&oacute;n de todo material informativo destinado al p&uacute;blico.<br />
<br />
d) Proveer informaci&oacute;n autorizada a los diferentes medios de comunicaci&oacute;n de las actividades referentes a la Instituci&oacute;n.<br />
<br />
e) Suministrar material informativo de las actividades del MIC y sus Dependencias al Departamento de Relaciones P&uacute;blicas para sus fines.<br />
<br />
f) Mantener organizado y actualizado el sistema de archivo de todo el material publicado y difundido.<br />
<br />
g) Monitorear los programas de opini&oacute;n de la radio, la televisi&oacute;n y la prensa escrita y digital, para conocer del tratamiento que en dichos programas se da al MIC y generar las acciones de comunicaci&oacute;n que se ameriten.<br />
<br />
h) Montar y despachar la S&iacute;ntesis Digital diaria.</p>
', 1071, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[articulos_contenido] ([id], [id_title], [titulo], [subtitulo], [contenido], [parent_id], [image_presentation_1], [image_presentation_2], [fecha], [fecha_publicacion], [tags], [avalible_edit], [avalible_childrens]) VALUES (1074, N'Perfil-del-Funcionario', N'Perfil del Funcionario', N'Perfil del Funcionario', N'<ul>
	<li>Perfil del Funcionario</li>
</ul>
', 1068, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[articulos_contenido] ([id], [id_title], [titulo], [subtitulo], [contenido], [parent_id], [image_presentation_1], [image_presentation_2], [fecha], [fecha_publicacion], [tags], [avalible_edit], [avalible_childrens]) VALUES (1075, N'Contactos-para-Servicios', N'Contactos para Servicios', N'Contactos para Servicios', N'<h1>Contactos para Servicios</h1>

<p>Para mayor comodidad de nuestros usuarios tenemos a disposici&oacute;n varias v&iacute;as de comunicaci&oacute;n:<br />
<br />
<em>En la ma&ntilde;ana:</em><br />
<strong>Ianna Mart&iacute;nez</strong><br />
<strong>Correo electr&oacute;nico:</strong>&nbsp;<a href="mailto:ianna.martinez@mic.gob.do">ianna.martinez@mic.gob.do</a><br />
<br />
<em>En la tarde:</em><br />
<strong>Yanneris Lovera</strong><br />
<strong>Correo electr&oacute;nico:</strong>&nbsp;<a href="mailto:yanneris.lovera@mic.gob.do">yanneris.lovera@mic.gob.do</a><br />
<br />
<strong>Tel.:</strong>&nbsp;(809) 567-8054 / (809) 567-7192 ,&nbsp;<strong>ext.:</strong>&nbsp;1054<br />
<strong>Fax:</strong>&nbsp;(809) 381-8079<br />
<strong>Direcci&oacute;n:</strong>&nbsp;Av. 27 de Febrero No. 209, Ensanche Naco.<br />
Santo Domingo, D. N. - Rep&uacute;blica Dominicana.<br />
<strong>Apartado Postal:</strong>&nbsp;10121</p>

<h3>Formulario de Contacto</h3>

<table border="0" cellpadding="0" cellspacing="0" style="width:98%">
	<tbody>
		<tr>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td><strong>Nombre:&nbsp;</strong>*</td>
			<td><input name="ctl00$ctl00$ctl00$ContentPlaceHolderDefault$Content$ctl04$Contacto_7$txtnombre" type="text" />&nbsp;</td>
		</tr>
		<tr>
			<td><strong>Apellido:&nbsp;</strong>*</td>
			<td><input name="ctl00$ctl00$ctl00$ContentPlaceHolderDefault$Content$ctl04$Contacto_7$txtapellido" type="text" />&nbsp;</td>
		</tr>
		<tr>
			<td><strong>Correo Electr&oacute;nico:&nbsp;</strong>*</td>
			<td><input name="ctl00$ctl00$ctl00$ContentPlaceHolderDefault$Content$ctl04$Contacto_7$txtmail" type="text" />&nbsp;&nbsp;</td>
		</tr>
		<tr>
			<td><strong>Tel&eacute;fono:</strong></td>
			<td><input name="ctl00$ctl00$ctl00$ContentPlaceHolderDefault$Content$ctl04$Contacto_7$txttel" type="text" /></td>
		</tr>
		<tr>
			<td><strong>Mensaje / Comentario:&nbsp;</strong>*</td>
			<td><textarea cols="20" name="ctl00$ctl00$ctl00$ContentPlaceHolderDefault$Content$ctl04$Contacto_7$txtcom" rows="2"></textarea></td>
		</tr>
		<tr>
			<td>&nbsp;</td>
			<td>
			<p><img alt="Captcha" src="http://mic.gob.do/CaptchaImage.axd?guid=453682d7-8469-451e-aa83-983a81e19237" style="height:60px; width:200px" /></p>
			</td>
		</tr>
		<tr>
			<td>&nbsp;</td>
			<td><input name="ctl00$ctl00$ctl00$ContentPlaceHolderDefault$Content$ctl04$Contacto_7$txtCaptcha" type="text" />&nbsp;&nbsp;</td>
		</tr>
		<tr>
			<td>&nbsp;</td>
			<td><input name="ctl00$ctl00$ctl00$ContentPlaceHolderDefault$Content$ctl04$Contacto_7$Button1" type="submit" value="Enviar" />&nbsp;<input type="RESET" value="Limpiar" /></td>
		</tr>
	</tbody>
</table>
', 1068, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[articulos_contenido] ([id], [id_title], [titulo], [subtitulo], [contenido], [parent_id], [image_presentation_1], [image_presentation_2], [fecha], [fecha_publicacion], [tags], [avalible_edit], [avalible_childrens]) VALUES (1076, N'Noticias', N'Noticias', N' Noticias MIC', N'<h1>Comunicaciones</h1>

<h4>Objetivo General:</h4>

<p>La Direcci&oacute;n de Comunicaciones es la unidad responsable de asesorar y proponer las pol&iacute;ticas de comunicaci&oacute;n del MIC, as&iacute; como de planificar y coordinar las actividades de divulgaci&oacute;n y difusi&oacute;n de la informaci&oacute;n, tanto a lo interno como a lo externo. Tiene el compromiso de&nbsp; promover y mantener una buena relaci&oacute;n con los medios de comunicaci&oacute;n y periodistas, en procura de asegurar que la opini&oacute;n p&uacute;blica sea eficaz y correctamente informada.</p>

<h4>Funciones Principales:</h4>

<p>a) Dise&ntilde;ar, proponer y poner en funcionamiento las normas y pol&iacute;ticas de comunicaci&oacute;n de la instituci&oacute;n y velar por su ejecuci&oacute;n y cumplimiento.<br />
<br />
b) Planificar e implementar estrategias de comunicaci&oacute;n encaminadas a fortalecer las funciones de la instituci&oacute;n y el logro de sus objetivos.<br />
<br />
c) Impulsar los diferentes procesos de comunicaci&oacute;n desde una perspectiva integral donde toda la actividad est&eacute;&nbsp; centralizada en funci&oacute;n del fortalecimiento y preservaci&oacute;n de la imagen de la instituci&oacute;n.<br />
<br />
d) Evaluar las iniciativas de comunicaci&oacute;n que le sean sugeridas y determinar las conveniencias o no de su aplicaci&oacute;n.<br />
<br />
e) Representar los intereses del MIC en su relaci&oacute;n con las diferentes compa&ntilde;&iacute;as publicitarias contratadas y coordinar con &eacute;stas la ejecuci&oacute;n de la publicidad de la instituci&oacute;n.<br />
<br />
f) Contratar con los medios de comunicaci&oacute;n las publicaciones del MIC en &quot;espacio pagado&quot;.<br />
<br />
g) Coordinar con las dem&aacute;s &aacute;reas las actividades a realizar en materia de comunicaci&oacute;n y difusi&oacute;n de la informaci&oacute;n del Ministerio.<br />
<br />
h) Administrar y promover una buena relaci&oacute;n con los medios de comunicaci&oacute;n, para garantizar y mantener, real y bien informada a la ciudadan&iacute;a.<br />
<br />
i) Mantener con los medios de comunicaci&oacute;n un canal permanente de informaci&oacute;n sobre las actividades de la instituci&oacute;n.</p>
', 1067, N'/Files/find/1067?filename=5tdm97d2x4p2kulz2rgu-8a4pe732mepxbul2ykd7-160224-Superman.jpg', N'/Files/find/1067?filename=5tdm97d2x4p2kulz2rgu-8a4pe732mepxbul2ykd7-160224-Superman.jpg', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[articulos_contenido] ([id], [id_title], [titulo], [subtitulo], [contenido], [parent_id], [image_presentation_1], [image_presentation_2], [fecha], [fecha_publicacion], [tags], [avalible_edit], [avalible_childrens]) VALUES (1077, N'Los-combustibles-subiran-esta-semana', N'Los combustibles subirán esta semana', N'Los combustibles subirán esta semana desde 80 centavos hasta RD$1.90, mientras que el GLP bajará RD$2.41', N'<p><strong>Publicado el:</strong>&nbsp;viernes, 19 de marzo de 2010 a las 10:00 a.m.</p>

<h1>Los combustibles subir&aacute;n esta semana desde 80 centavos hasta RD$1.90, mientras que el GLP bajar&aacute; RD$2.41</h1>

<h3>El Ministerio de Industria y Comercio (MIC) informa que debido a la tendencia alcistas de los derivados del petr&oacute;leo, dispuso ligeras alzas en los precios de las gasolinas y el gasoil, que van desde RD$1.00 y RD$1.90, pero al mismo tiempo rebaj&oacute; RD$2.41 al precio del Gas Licuado de Petr&oacute;leo (GLP).</h3>

<p><a href="http://mic.gob.do/media/11852/combustible%202010.jpg" rel="gallery" title=""><img alt="" src="/Files/find/1067?filename=5tdm97d2x4p2kulz2rgu-8a4pe732mepxbul2ykd7-160224-Superman.jpg" style="height:200px; width:200px" /></a></p>

<p>Las alzas en los combustibles fueron motivadas por el debilitamiento del d&oacute;lar frente a otras monedas internacionales.<br />
<br />
En ese sentido, un bolet&iacute;n de la Direcci&oacute;n de Comunicaciones del MIC precisa que para la semana del 20 al 26 del presente mes de marzo, el gal&oacute;n de gasolina Premium costar&aacute; RD$165.90, para un aumento de RD$1.90, mientras que la gasolina regular se vender&aacute; a RD$155.90, para un alza de RD$1.50.<br />
<br />
De igual forma, el gal&oacute;n de gasoil Regular costar&aacute; RD$131.30 y el gasoil tipo Premium se ofertar&aacute; a RD$136.30, lo que representa un incremento de RD$1.00 respectivamente.</p>

<p>El Avtur costar&aacute; RD$105.84 por gal&oacute;n, para un aumento 92 centavos, lo mismo que el Kerosene, cuyo gal&oacute;n se vender&aacute; a RD$122.40, para un incremento de 80 centavos. El gal&oacute;n de Gas Licuado de Petr&oacute;leo se expender&aacute; a RD$75.96, lo cual representa una rebaja de RD$2.41.<br />
<br />
La tasa de cambio promediada fue de RD$36.44, seg&uacute;n los informes del Banco Central de la Rep&uacute;blica Dominicana.<br />
<br />
De acuerdo al bolet&iacute;n del MIC, &nbsp;los funcionarios de la Organizaci&oacute;n de Pa&iacute;ses Exportadores de Petr&oacute;leo anunciaron que mantendr&aacute;n un tope en la producci&oacute;n para impedir que los precios se desplomen nuevamente y dicha posici&oacute;n elev&oacute; a&uacute;n m&aacute;s los precios, que ayer se mantuvieron en casi $81 d&oacute;lares el barril.<br />
<br />
El barril de crudo de Texas se encareci&oacute; este mi&eacute;rcoles el 1,5 por ciento y cerr&oacute; la sesi&oacute;n a 82,93 d&oacute;lares en Nueva York, despu&eacute;s de que el Departamento de Energ&iacute;a (DOE) de Estados Unidos informara que las reservas de esa materia prima bajaron la semana pasada en un mill&oacute;n de barriles (0,3 por ciento) y se situaron en 334 millones.<br />
<br />
Asimismo, &nbsp;el DOE divulg&oacute; &nbsp;que las reservas de destilados, en las que se incluye el gas&oacute;leo, bajaron en 1,5 millones de barriles (un 1 por ciento) y se situaron en 148,1 millones de barriles, frente a los 149,6 de la semana anterior, y eso tambi&eacute;n influy&oacute; en las alzas.<br />
<br />
En cuanto a los inventarios de gasolina, bajaron en 1.7 millones de barriles y se situaron en 227.3 millones, frente a los 229 millones de barriles registrados la semana anterior, un 0.7 por ciento menos.<br />
<br />
Las reservas de combustible para calefacci&oacute;n bajaron en 1.5 millones de barriles, un 1 por ciento menos, y se situaron en 148.1 millones de barriles, frente a los 149.6 de la semana anterior. El total de existencias de crudo y productos refinados en Estados Unidos, incluida la Reserva Estrat&eacute;gica, alcanz&oacute; la pasada semana 1,767.4 millones de barriles frente a los 1,767.9 millones de barriles de la semana anterior.</p>

<p><strong>Fuente:</strong>&nbsp;Direcci&oacute;n de Comunicaciones</p>
', 1076, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[articulos_contenido] ([id], [id_title], [titulo], [subtitulo], [contenido], [parent_id], [image_presentation_1], [image_presentation_2], [fecha], [fecha_publicacion], [tags], [avalible_edit], [avalible_childrens]) VALUES (1096, N'MIC-anuncia-nuevos-precios-combustibles', N'MIC anuncia nuevos precios combustibles', N'El Ministerio de Industria y Comercio (MIC), informó que en la semana del 16 al 22 de abril el Gas Natural mantiene el mismo nivel de la semana previa, mientras los de todos los combustibles líquidos así como del Gas Licuado de Petróleo (GLP) presentarán alzas.', N'<p><a href="http://mic.gob.do/media/961029/combustible3---.jpg" rel="gallery" title=""><img alt="" src="/Files/find/1067?filename=kd6yr5u2pzwyd5k73gnb-combustible3---%5B1%5D.jpg" style="height:333px; width:500px" /></a></p>

<p>Al cierre de la semana pasada e inicios de esta, los precios internacionales de todos los destilados del petr&oacute;leo cerraron su cotizaci&oacute;n semanal hacia el alza sobre-estimulados por las informaciones de un no confirmado acuerdo entre Arabia Saud&iacute; y Rusia -los dos mayores productores mundiales- para estabilizar la oferta mundial de crudo.</p>

<p>La divulgaci&oacute;n de estas negociaciones ha alimentado las expectativas de que se extiendan las negociaciones para alcanzar el domingo pr&oacute;ximo en Doha una congelaci&oacute;n o disminuci&oacute;n de la producci&oacute;n de los grandes exportadores mundiales de petr&oacute;leo, explic&oacute; la Direcci&oacute;n de Comunicaciones del MIC.</p>

<p>Sin embargo, impera la duda sobre la viabilidad de este acuerdo, que ya fracas&oacute; en febrero, pues Ir&aacute;n no estar&iacute;a dispuesto a recortar su extracci&oacute;n de crudo apenas reincorporado a la comercializaci&oacute;n de dicho producto y a la reconquista de los mercados perdidos tras las sanciones que sufri&oacute; por su programa nuclear y que fueron levantadas apenas en enero.</p>

<p>En tanto, en el hemisferio occidental la escalada en las cotizaciones de los derivados y el propio &quot;oro negro&quot; se ha sucedido luego de que se divulgaran datos sobre una reducci&oacute;n en los niveles de producci&oacute;n de crudo en Estados Unidos. En el reciente informe del Departamento de Energ&iacute;a, se presenta una t&iacute;mida producci&oacute;n la semana pasada en ese mercado de apenas 9.03 millones de barriles diarios de crudo, mientras hace un a&ntilde;o para estas fechas, la producci&oacute;n alcanzaba los 9.41 millones de barriles.</p>

<p>Asimismo, el comportamiento alcista de esta semana en el mercado de refinados se ha interpretado como una reacci&oacute;n al descenso semanal de ocho plataformas petrol&iacute;feras que operan en EE.UU., hasta un total de 354, mientras para igual periodo del a&ntilde;o previo, las plataformas que estaban operando m&aacute;s que duplicaban ese n&uacute;mero del a&ntilde;o en curso con 760 en operaci&oacute;n.</p>

<p>Esta semana tambi&eacute;n se difundieron datos de una importante reducci&oacute;n en los stocks de gasolina norteamericanos y que ha pesado significativamente sobre el rebote de los precios.</p>

<p>En tal sentido, la Gasolina Premium costar&aacute; RD$186.40, para un alza de RD$2.50. La Gasolina Regular costar&aacute; RD$167.10, para un alza de RD$2.90. El Gasoil &Oacute;ptimo se vender&aacute; a RD$140.70, para un incremento de RD$1.10. El Gasoil Regular costar&aacute; RD$125.80, para un alza de RD$1.80.</p>

<p>El Avtur ser&aacute; vendido a RD$87.50, para un alza de RD$1.70; el Kerosene costar&aacute; RD$110.20, para un alza de RD$1.60. El Fuel Oil costar&aacute; RD$65.44, para un alza de RD$1.94. El Gas Licuado de Petr&oacute;leo (GLP) costar&aacute; RD$86.60, para un alza de RD$1.00. El Gas Natural (GNL - GNC) costar&aacute; RD$23.22, mantendr&aacute; el mismo precio.</p>

<p>La tasa de cambio promediada para el c&aacute;lculo de todos los combustibles se mantuvo en RD$45.86, seg&uacute;n sondeo realizado por Banco Central de la Rep&uacute;blica Dominicana.</p>
', 1076, N'/Files/find/1067?filename=kd6yr5u2pzwyd5k73gnb-combustible3---%5B1%5D.jpg', NULL, CAST(N'2016-05-04 11:16:26.877' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[articulos_contenido] ([id], [id_title], [titulo], [subtitulo], [contenido], [parent_id], [image_presentation_1], [image_presentation_2], [fecha], [fecha_publicacion], [tags], [avalible_edit], [avalible_childrens]) VALUES (1097, N'Celebran-Primera-Mesa-de-Dialogo-para-elaboracion-de-un-Diagnostico-en-el-Sector-Lacteo', N'Celebran Primera Mesa de Diálogo para elaboración de un Diagnóstico en el Sector Lácteo', N'El Ministerio de Industria y Comercio (MIC), a través de sus Viceministerios de Desarrollo Industrial y de Fomento a las Pymes, en coordinación con la Comisión Económica para América Latina y el Caribe (CEPAL), celebró la “Primera Mesa de Diálogo para la Validación de las Restricciones Identificadas en la Cadena de Valor de Lácteos”, como parte del proceso que se está desarrollando para la elaboración de un diagnóstico sobre esta cadena a nivel nacional.', N'<p><a href="http://mic.gob.do/media/962655/_dsc8123---.jpg" rel="gallery" title=""><img alt="" src="/Files/find/1067?filename=qb8f6ys2mh5pfxnzxqfu-_dsc8123---%5B1%5D.jpg" style="height:200px; width:300px" /></a></p>

<p>Este importante evento forma parte de un proceso participativo que tiene alcance a nivel nacional y cont&oacute;, adem&aacute;s, con el apoyo y la colaboraci&oacute;n del Consejo Nacional para la Reglamentaci&oacute;n y Fomento de la Industria Lechera (CONALECHE).</p>

<p>&quot;Este proceso, que inici&oacute; a finales del a&ntilde;o 2015, tiene por finalidad utilizar la metodolog&iacute;a CEPAL para construir y fortalecer capacidades a nivel local y diagnosticar la generaci&oacute;n de valor agregado en la cadena de valor de l&aacute;cteos, sector con gran potencial para contribuir con el desarrollo econ&oacute;mico y social de nuestro pa&iacute;s&quot;, as&iacute; lo indic&oacute; el viceministro de Desarrollo Industrial, Vinicio Mella, al dar inicio a este encuentro.</p>

<p>Durante su intervenci&oacute;n, el funcionario resalt&oacute; que los resultados obtenidos de esta Primera Mesa de Di&aacute;logo, constituir&aacute;n un insumo vital para la formulaci&oacute;n de estrategias, enfocadas en la industria l&aacute;ctea, &quot;que deberemos impulsar en alianza con el sector privado, con miras a lograr una industria m&aacute;s fuerte, m&aacute;s competitiva y generadora de m&aacute;s y mejores empleos&quot;.</p>

<p>El evento cont&oacute; con la participaci&oacute;n de varias personalidades, entre ellas el Oficial de Asuntos Econ&oacute;micos de la Unidad de Comercio Internacional e Industria de la CEPAL, Ram&oacute;n Padilla; el director general de Ganader&iacute;a del Ministerio de Agricultura, Bol&iacute;var Toribio; el director del Consejo Nacional para la Reglamentaci&oacute;n y Fomento de la Industria Lechera (CONALECHE), Arnaldo G&oacute;mez; el presidente de la Asociaci&oacute;n Dominicana de Productores de Leche (APROLECHE), Eric Rivero; as&iacute; como los Viceministros de Desarrollo Industrial y Fomento a las PYMES, Vinicio Mella e Ignacio M&eacute;ndez, respectivamente.</p>

<p><img alt="_DSC8170---" src="/Files/find/1067?filename=hs4rydq29hn3zgdq5257-_dsc8170---_500x334%5B1%5D.jpg" style="height:334px; width:500px" /></p>
', 1076, N'/Files/find/1067?filename=qb8f6ys2mh5pfxnzxqfu-_dsc8123---%5B1%5D.jpg', NULL, CAST(N'2016-05-04 11:18:46.007' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[articulos_contenido] ([id], [id_title], [titulo], [subtitulo], [contenido], [parent_id], [image_presentation_1], [image_presentation_2], [fecha], [fecha_publicacion], [tags], [avalible_edit], [avalible_childrens]) VALUES (1098, N'Precios-combustibles-registraran-variaciones', N'Precios combustibles registrarán variaciones', N'El Ministerio de Industria y Comercio (MIC), informó que en la semana del 23 al 29 de abril, el precio del Gas Natural continúa igual, mientras los precios de venta al público del resto de los combustibles registrarán variaciones.', N'<p><a href="http://mic.gob.do/media/962774/combustibles---.jpg" rel="gallery" title=""><img alt="" src="/Files/find/1067?filename=p8w8cqn2vrfq7ch4vxga-combustibles---%5B1%5D.jpg" style="height:134px; width:300px" /></a></p>

<p>El MIC explic&oacute;, a trav&eacute;s de su Direcci&oacute;n de Comunicaciones, que para el per&iacute;odo de referencia, y luego que se divulgar&aacute;n noticias sobre la reducci&oacute;n de la producci&oacute;n estadounidense a m&iacute;nimos en 18 meses y por las expectativas derivadas de la potencial celebraci&oacute;n de una nueva reuni&oacute;n de pa&iacute;ses productores de crudo -luego del fracaso de las negociaciones del domingo en Doha-, los precios de los destilados nueva vez contin&uacute;an subiendo en las bolsas internacionales.</p>

<p>&nbsp;</p>

<p>En tanto en Asia, las mejores proyecciones para China -mayor consumidor de energ&iacute;a mundial-, junto al pron&oacute;stico de que la Reserva Federal no aumentar&aacute; las tasas de inter&eacute;s antes de junio y una serie de medidas de flexibilizaci&oacute;n de los m&aacute;s importantes bancos centrales del mundo, han alimentado el optimismo en los mercados mundiales recientemente y ha provocado el rebote en los precios de los refinados.</p>

<p>&nbsp;</p>

<p>Asimismo, la perspectiva de que el encuentro en Catar fuera el primer paso hacia una colaboraci&oacute;n m&aacute;s estrecha entre pa&iacute;ses para equilibrar o disminuir el nivel de bombeo global contribuy&oacute; al incremento la semana pasada del Petr&oacute;leo Brent a su m&aacute;ximo anual de US$44.69 por barril, esto es un aumento de 65% respecto al m&iacute;nimo registrado este a&ntilde;o.</p>

<p>&nbsp;</p>

<p>En consecuencia, la Gasolina Premium costar&aacute; RD$188.90, para un alza de RD$2.50. La Gasolina Regular costar&aacute; RD$169.80, para un alza de RD$2.70.</p>

<p>El Gasoil &Oacute;ptimo se vender&aacute; a RD$143.30, para un incremento de RD$2.60. El Gasoil Regular costar&aacute; RD$128.10, para un alza de RD$2.30.</p>

<p>El Avtur ser&aacute; vendido a RD$88.90, para un alza de RD$1.40; el Kerosene costar&aacute; RD$111.80, para un alza de RD$1.60. El Fuel Oil costar&aacute; RD$66.44, para un alza de RD$1.00. El Gas Licuado de Petr&oacute;leo (GLP) costar&aacute; RD$87.60, para un alza de RD$1.00. El Gas Natural (GNL - GNC) costar&aacute; RD$23.22, mantendr&aacute; el mismo precio.</p>

<p>La tasa de cambio promediada para el c&aacute;lculo de todos los combustibles se mantuvo en RD$45.86, seg&uacute;n sondeo realizado por Banco Central de la Rep&uacute;blica Dominicana.</p>
', 1076, N'/Files/find/1067?filename=p8w8cqn2vrfq7ch4vxga-combustibles---%5B1%5D.jpg', NULL, CAST(N'2016-05-04 11:21:10.190' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[articulos_contenido] ([id], [id_title], [titulo], [subtitulo], [contenido], [parent_id], [image_presentation_1], [image_presentation_2], [fecha], [fecha_publicacion], [tags], [avalible_edit], [avalible_childrens]) VALUES (1099, N'Ministro-Jose-del-Castillo,-enfrenta-el-Zika-en-Barahona;-participa-en-jornada-junto-a-los-empleados-del-MIC', N'Ministro José del Castillo, enfrenta el Zika en Barahona; participa en jornada junto a los empleados del MIC', N'Barahona. El Ministro José del Castillo Saviñón, se integró el pasado sábado a la Jornada contra el Zika-Virus en esta ciudad, en el operativo realizado en el distrito municipal de Villa Central.', N'<p><a href="http://mic.gob.do/media/963054/dsc_4865---.jpg" rel="gallery" title=""><img alt="" src="http://mic.gob.do/ImageGen.ashx?image=/media/963054/dsc_4865---.jpg&amp;width=%20%20286&amp;Constrain=true" /></a></p>

<p>Del Castillo Savi&ntilde;&oacute;n, particip&oacute; junto a los empleados del Ministerio de Industria y Comercio (MIC) en esta ciudad, adem&aacute;s de una comisi&oacute;n que vino desde Santo Domingo.</p>

<p>Asimismo el titular del MIC visit&oacute; decenas de viviendas de la zona, en donde les exhortaba con consejos pr&aacute;cticos a sus moradores c&oacute;mo prevenir la cr&iacute;a del mosquito, para as&iacute; combatir este mal desde sus hogares.</p>

<p>La directora de recursos humanos del MIC, Licda. Ramona Mej&iacute;a Maceas, estuvo encabezando el operativo junto a Jos&eacute; del Castillo y t&eacute;cnicos de la Direcci&oacute;n Provincial de Salud P&uacute;blica, los cuales visitaron tambi&eacute;n varias casas del barrio La Monta&ntilde;ita y Los Blocks de Villa Central, entregando cloro, eliminando criaderos en los patios, entre otras acciones.</p>

<p>En la jornada tambi&eacute;n estuvieron presentes los funcionarios del MIC Rudy Mar&iacute;a M&eacute;ndez (&Ntilde;i&ntilde;&iacute;n), Ilianov M&eacute;ndez y Juana Reynoso, quienes recibieron el soporte de apoyo de la directora provincial de Salud, Amelia Figuereo, el alcalde Noel Octavio Suberv&iacute; N&iacute;n, y de otras personalidades que fueron al operativo en Villa Central.</p>

<p>&nbsp;</p>

<p><img alt="pastedImage---" src="http://mic.gob.do/media/963096/pastedimage---_500x333.jpg" style="height:333px; width:500px" /></p>
', 1076, N'/Files/find/1067?filename=fjbmy5r2b2qmtealf9a7-dsc_4865---%5B1%5D.jpg', N'/Files/find/1067?filename=yudlnv82m5utdyjmq5me-pastedimage---_500x333%5B1%5D.jpg', CAST(N'2016-05-04 11:23:36.660' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[articulos_contenido] ([id], [id_title], [titulo], [subtitulo], [contenido], [parent_id], [image_presentation_1], [image_presentation_2], [fecha], [fecha_publicacion], [tags], [avalible_edit], [avalible_childrens]) VALUES (1100, N'Viceministerios', N'Viceministerios', N'Viceministerios', N'<ul>
	<li><a href="http://mic.gob.do/viceministerios/comercio-exterior.aspx">Comercio Exterior</a></li>
	<li><a href="http://mic.gob.do/viceministerios/comercio-interno.aspx">Comercio Interno</a></li>
	<li><a href="http://mic.gob.do/viceministerios/desarrollo-industrial.aspx">Desarrollo Industrial</a></li>
	<li><a href="http://mic.gob.do/viceministerios/fomento-a-las-pymes.aspx">Fomento a la Peque&ntilde;a y Mediana Empresa</a></li>
	<li><a href="http://mic.gob.do/viceministerios/zonas-francas-y-reg%C3%ADmenes-especiales.aspx">Zonas Francas y Reg&iacute;menes Especiales</a></li>
</ul>
', NULL, NULL, NULL, NULL, NULL, N'sdsds', 0, NULL)
INSERT [dbo].[articulos_contenido] ([id], [id_title], [titulo], [subtitulo], [contenido], [parent_id], [image_presentation_1], [image_presentation_2], [fecha], [fecha_publicacion], [tags], [avalible_edit], [avalible_childrens]) VALUES (1101, N'Comercio-Exterior', N'Comercio Exterior', NULL, N'<div class="Col-Izquierda-Vicoex" id="Col-Izquierda-Full">
<div class="contenido" id="imprimir">
<div class="btn-tools"><!-- <button class="btn-print" onClick="printContent(''imprimir'')"></button> --></div>

<div id="ContentRounded-ViCOEX">
<div class="tabbed-area-Vicoex">
<ul>
	<li><a class="active" href="javascript:tabSwitch(''tab_1'', ''content_1'');" id="tab_1">Sobre el Viceministerio</a></li>
	<li><a href="javascript:tabSwitch(''tab_2'', ''content_2'');" id="tab_2">Perfil del Funcionario</a></li>
	<li><a href="javascript:tabSwitch(''tab_3'', ''content_3'');" id="tab_3">Participaci&oacute;n del pa&iacute;s en Organismos Internacionales</a></li>
	<li><a href="javascript:tabSwitch(''tab_4'', ''content_4'');" id="tab_4">Instituciones Nacionales Vinculadas al Comercio Exterior</a></li>
	<li><a href="javascript:tabSwitch(''tab_5'', ''content_5'');" id="tab_5">Marco Legal</a></li>
	<li><a href="javascript:tabSwitch(''tab_6'', ''content_6'');" id="tab_6">Tratados Comerciales</a></li>
	<li><a href="javascript:tabSwitch(''tab_7'', ''content_7'');" id="tab_7">Documentos de Comercio Exterior</a></li>
	<li><a href="javascript:tabSwitch(''tab_8'', ''content_8'');" id="tab_8">Ofertas Exportables</a></li>
	<li><a href="javascript:tabSwitch(''tab_9'', ''content_9'');" id="tab_9">Gu&iacute;a para Exportar</a></li>
	<li><a href="javascript:tabSwitch(''tab_10'', ''content_10'');" id="tab_10">Cursos y Capacitaciones sobre Comercio</a></li>
	<li><a href="javascript:tabSwitch(''tab_11'', ''content_11'');" id="tab_11">Consultas</a></li>
	<li><a href="javascript:tabSwitch(''tab_12'', ''content_12'');" id="tab_12">Contacto para Servicios</a></li>
</ul>

<div class="content" id="content_1" style="display: block;">
<div class="content-info">
<h3>Sobre el Viceministerio</h3>

<div><!-- <img src="/img/interiores/vicoex-2.jpg" width="695" height="250" alt="Viceministerio de Comercio Exterior" border="0"/> -->
<p>El Viceministerio de Comercio Exterior es el encargado, junto con las dem&aacute;s instancias correspondientes, de ejecutar la pol&iacute;tica y la estrategia nacional de Comercio Exterior, orientadas a facilitar el acceso y a mantener un incremento sostenido de los productos y servicios nacionales en mercados externos. As&iacute; como, coordinar y supervisar la administraci&oacute;n y la implementaci&oacute;n de los tratados de libre comercio, de los cuales el pa&iacute;s es signatario, orientando a la clase empresarial para el mejor aprovechamiento de los t&eacute;rminos y condiciones de esos acuerdos.</p>
</div>

<h3>Funciones</h3>

<div>
<p>El Viceministerio de Comercio Exterior tiene a su cargo las siguientes atribuciones:</p>

<ul>
	<li>Dar seguimiento al entorno internacional, asistiendo al Ministro de Industria y Comercio en materia de Comercio Exterior y Pol&iacute;tica Comercial; y, en los asuntos de implementaci&oacute;n y administraci&oacute;n de tratados.</li>
	<li>Coordinar y supervisar la administraci&oacute;n y la implementaci&oacute;n de los tratados de libre comercio, de los cuales el pa&iacute;s es signatario, asesorando a la clase empresarial para el mejor aprovechamiento de los t&eacute;rminos y condiciones de esos acuerdos.</li>
	<li>Coordinar junto a las dem&aacute;s instancias correspondientes la participaci&oacute;n de la Rep&uacute;blica Dominicana en los procesos de soluci&oacute;n de disputas generadas por un acuerdo de comercio o inversi&oacute;n ante tribunales arbitrales, la Organizaci&oacute;n Mundial del Comercio o cualquier otro foro de resoluci&oacute;n de disputas comerciales internacionales.</li>
	<li>Representar al Ministro en foros y organismos internacionales de integraci&oacute;n especializados en comercio multilateral, regional y subregional y en aquellas agencias que proporcionan asistencia t&eacute;cnica y financiera, as&iacute; como la creaci&oacute;n de capacidades comerciales, entre otros.</li>
	<li>Representar al Ministro ante Misiones Comerciales y de Inversionistas Internacionales interesados en llevar a cabo rueda de negocios y establecimiento de contactos empresariales con comerciantes e industriales dominicanos.</li>
	<li>Participar en Talleres, Seminarios, Conferencias Nacionales e Internacionales y dem&aacute;s Conversatorios que se llevan a cabo en Institutos de Investigaci&oacute;n, Universidades y Centros Acad&eacute;micos de Formaci&oacute;n de Recursos Humanos, sobre la importancia del Comercio Exterior Multilateral, en la din&aacute;mica de crecimiento y desarrollo de la econom&iacute;a dominicana.</li>
	<li>Dar seguimiento a los Planes de Trabajo de sus Instituciones adscritas.</li>
</ul>
</div>

<h3>Otras Actividades</h3>

<div>
<p>El Viceministerio de Comercio Exterior vela por la coherencia de los planes operativos, programas y servicios de:</p>

<ul>
	<li>La Direcci&oacute;n de Comercio Exterior y Administraci&oacute;n de Tratados Comerciales Internacionales (DICOEX).</li>
	<li>El Centro de Exportaci&oacute;n e Inversi&oacute;n de la Republica Dominicana (CEI-RD).</li>
	<li>La Comisi&oacute;n Nacional de Pr&aacute;cticas Desleales y Medidas de Salvaguarda.</li>
</ul>
</div>

<h3>Referencia Normativa</h3>

<div>
<ul>
	<li><a href="http://www.mic.gob.do/media/18012/Ley%20No.%20290-66,%20de%20fecha%2030%20de%20junio%20del%20a%C3%B1o%201966,%20que%20crea%20la%20Secretar%C3%ADa%20de%20Estado%20de%20Industria%20y%20Comercio,%20y%20su%20Reglamento%20de%20Aplicaci%C3%B3n%20No.%20186-66,%20de%20fecha%2012%20de%20agosto%20del%20a%C3%B1o%201966.pdf" target="_blank" title="Ley No. 290-66, de fecha 30 de junio del año 1966">Ley Org&aacute;nica Nro. 290-66</a></li>
</ul>
</div>
</div>
</div>

<div class="content" id="content_2" style="display: none;">
<div class="content-info">
<h3>Perfil del Funcionario</h3>

<p><img alt="Perfil Viceministra de Comercio Exterior" src="/img/interiores/vicoex-perfil.jpg" style="height:622px; width:695px" /></p>

<p>&nbsp;</p>

<ul>
	<li>
	<table border="0" cellpadding="0" cellspacing="0" class="stripe" style="width:100%">
		<tbody>
			<tr>
				<td><img src="/umbraco/images/umbraco/page_white_acrobat.png" />&nbsp;</td>
				<td><a href="/media/815505/perfil. licda.yahaira.sosa. machado.actual.pdf" target="_blank">Licda. Yahaira Sosa Machado</a>
				<div class="documentDesc">Viceministra de Comercio Exterior</div>
				</td>
				<td>2015/04/29</td>
				<td><em>442.1 KB</em></td>
			</tr>
		</tbody>
	</table>
	</li>
</ul>
</div>
</div>

<div class="content" id="content_3" style="display: none;">
<div class="content-info">
<h3>Participaci&oacute;n del pa&iacute;s en Organismos Internacionales</h3>

<table border="0" cellpadding="0" cellspacing="0" style="width:100%">
	<tbody>
		<tr>
			<td colspan="2">
			<h3>MIEMBROS</h3>
			</td>
		</tr>
		<tr>
			<td>Acuerdo General sobre Aranceles Aduaneros y Comercio (GATT)</td>
			<td>wto.org</td>
		</tr>
		<tr>
			<td>Alianza del Pac&iacute;fico (Observador)</td>
			<td>alianzapacifico.net</td>
		</tr>
		<tr>
			<td>Alto Comisionado de las Naciones Unidas para los Refugiados (ACNUR)</td>
			<td>Acnur.org</td>
		</tr>
		<tr>
			<td>Alto Comisionado para los Derechos Humanos (OHCHR)</td>
			<td>ohchr.org</td>
		</tr>
		<tr>
			<td>Asociaci&oacute;n Internacional de Fomento (AIF)</td>
			<td>bancomundial.org/aif</td>
		</tr>
		<tr>
			<td>Asociaci&oacute;n Latinoamericana de Integraci&oacute;n (ALADI) (Miembro Parcial)</td>
			<td>aladi.org</td>
		</tr>
		<tr>
			<td>Banco Interamericano de Desarrollo (BID)</td>
			<td>iadb.org</td>
		</tr>
		<tr>
			<td>Banco Internacional de Reconstrucci&oacute;n y Fomento (BIRF)</td>
			<td>bancomundial.org/birf</td>
		</tr>
		<tr>
			<td>Comisi&oacute;n de Derecho Internacional (CINU)</td>
			<td>cinu.mx/temas/derecho-internacional</td>
		</tr>
		<tr>
			<td>Comisi&oacute;n de Desarme de las Naciones unidas (CDNU)</td>
			<td>Comitednu.org</td>
		</tr>
		<tr>
			<td>Comisi&oacute;n de Naciones Unidas para el Derecho Mercantil Internacional (CNUDMI)</td>
			<td>uncitral.org</td>
		</tr>
		<tr>
			<td>Comisi&oacute;n Econ&oacute;mica para Am&eacute;rica Latina y el Caribe (CEPAL)</td>
			<td>Cepal.org</td>
		</tr>
		<tr>
			<td>Comisi&oacute;n Europea</td>
			<td>ec.europa.eu</td>
		</tr>
		<tr>
			<td>Comisi&oacute;n Interamericana de las Mujeres de la OEA (CIM)</td>
			<td>oas.org/es/cim</td>
		</tr>
		<tr>
			<td>Conferencia de las Naciones Unidas sobre Comercio y Desarrollo (UNCTAD)</td>
			<td>Unctad.org</td>
		</tr>
		<tr>
			<td>Consejo econ&oacute;mico y Social (CES)</td>
			<td>Un.org/es/ecosa</td>
		</tr>
		<tr>
			<td>Cooperaci&oacute;n Financiera Internacional (CFI)</td>
			<td>Ifc.org</td>
		</tr>
		<tr>
			<td>Corte Internacional de justicia (CIJ)</td>
			<td>Cij.org</td>
		</tr>
		<tr>
			<td>El Fondo de Poblaci&oacute;n de las Naciones Unidas (FPNU)</td>
			<td>unfpa.org</td>
		</tr>
		<tr>
			<td>Fondo de las Naciones Unidas para la Infancia (UNICEF)</td>
			<td>Unicef.org</td>
		</tr>
		<tr>
			<td>Fondo Internacional de desarrollo Agr&iacute;cola (FIDA)</td>
			<td>Ifa.org</td>
		</tr>
		<tr>
			<td>Fondo monetario Internacional (FMI)</td>
			<td>imf.org</td>
		</tr>
		<tr>
			<td>Instituto de las Naciones Unidas para la Formaci&oacute;n y la Investigaci&oacute;n (UNITAR)</td>
			<td>unitar.org</td>
		</tr>
		<tr>
			<td>Instituto Internacional para la Educaci&oacute;n Superior en Am&eacute;rica Latina y el Caribe (IESALC)</td>
			<td>iesalc.unesco.org.ve</td>
		</tr>
		<tr>
			<td>Junta Interamericana de defensa (JID)</td>
			<td>Jid.org</td>
		</tr>
		<tr>
			<td>La Asociaci&oacute;n de Estados del Caribe (AEC)</td>
			<td>acs-aec.org</td>
		</tr>
		<tr>
			<td>Oficina de Asuntos Humanitarios de las Naciones Unidas (OCHA)</td>
			<td>unocha.org</td>
		</tr>
		<tr>
			<td>Oficina Internacional de Educaci&oacute;n (OIE)</td>
			<td>ibe.unesco.org</td>
		</tr>
		<tr>
			<td>Organismo Internacional de Energ&iacute;a At&oacute;mica (OIEA)</td>
			<td>iaea.org</td>
		</tr>
		<tr>
			<td>Organizaci&oacute;n de Aviaci&oacute;n Civil Internacional (OACI)</td>
			<td>Icao.int</td>
		</tr>
		<tr>
			<td>Organizaci&oacute;n de Estados Iberoamericanos para la Educaci&oacute;n, la Ciencia y la Cultura (OEI)</td>
			<td>oei.es</td>
		</tr>
		<tr>
			<td>Organizaci&oacute;n de las Naciones Unidas (ONU)</td>
			<td>Portal.onu.org.do</td>
		</tr>
		<tr>
			<td>Organizaci&oacute;n de las Naciones Unidas para el Desarrollo Industrial (ONUDI)</td>
			<td>Unido.org</td>
		</tr>
		<tr>
			<td>Organizaci&oacute;n de las Naciones Unidas para la Agricultura y la Alimentaci&oacute;n (FAO)</td>
			<td>onufao.org</td>
		</tr>
		<tr>
			<td>Organizaci&oacute;n de las Naciones Unidas para la Educaci&oacute;n, la Ciencia y la Cultura (ONESCO)</td>
			<td>portal.unesco.org</td>
		</tr>
		<tr>
			<td>Organizaci&oacute;n de los Estados Americano (OEA)</td>
			<td>Oas.org</td>
		</tr>
		<tr>
			<td>Organizaci&oacute;n de Turismo del Caribe (CTO)</td>
			<td>onecaribbean.org</td>
		</tr>
		<tr>
			<td>Organizaci&oacute;n Internacional de Polic&iacute;a Criminal (INTERPOL)</td>
			<td>interpol.int</td>
		</tr>
		<tr>
			<td>Organizaci&oacute;n Internacional del Trabajo (OIT)</td>
			<td>Ilo.org</td>
		</tr>
		<tr>
			<td>Organizaci&oacute;n Meteorol&oacute;gica Mundial (OMM)</td>
			<td>wmo.int</td>
		</tr>
		<tr>
			<td>Organizaci&oacute;n Mundial de la Propiedad Intelectual (OMPI)</td>
			<td>wipo.int</td>
		</tr>
		<tr>
			<td>Organizaci&oacute;n Mundial de la Salud (OMS)</td>
			<td>who.int</td>
		</tr>
		<tr>
			<td>Organizaci&oacute;n mundial de Turismo (OMT)</td>
			<td>unwto.org</td>
		</tr>
		<tr>
			<td>Organizaci&oacute;n Panamericana de la Salud ( OPS)</td>
			<td>Pago.org</td>
		</tr>
		<tr>
			<td>Programa de las Naciones Unidas para el Desarrollo (PNUD)</td>
			<td>do.undp.org</td>
		</tr>
		<tr>
			<td>Programa de las Naciones Unidas para el Medio Ambiente (PNUMA)</td>
			<td>pnuma.org</td>
		</tr>
		<tr>
			<td>Programa Mundial de Alimentos (PMA)</td>
			<td>es.wfp.org</td>
		</tr>
		<tr>
			<td>Proyecto Mesoamerica</td>
			<td>proyectomesoamerica.org</td>
		</tr>
		<tr>
			<td>Secretar&iacute;a de Integraci&oacute;n Econ&oacute;mica Centroamericana (SIECA)</td>
			<td>sieca.int</td>
		</tr>
		<tr>
			<td>Sistema de la Integraci&oacute;n Centroamericana (SICA)</td>
			<td>sica.int</td>
		</tr>
		<tr>
			<td>Sistema Econ&oacute;mico Latinoamericano y del Caribe (SELA)</td>
			<td>sela.org</td>
		</tr>
		<tr>
			<td>Uni&oacute;n Internacional de Telecomunicaciones (UIT)</td>
			<td>itu.int</td>
		</tr>
		<tr>
			<td>Uni&oacute;n Postal Universal (UPU)</td>
			<td>upu.int</td>
		</tr>
	</tbody>
</table>
</div>
</div>

<div class="content" id="content_4" style="display: none;">
<div class="content-info">
<h3>Instituciones Nacionales Vinculadas al Comercio Exterior</h3>

<ul>
	<li><a href="http://www.bancentral.gov.do/" target="_blank">Banco Central de la Rep&uacute;blica Dominicana</a></li>
	<li><a href="http://cei-rd.gob.do/" target="_blank">Centro de Exportaci&oacute;n&nbsp;e Invers&igrave;on&nbsp;de la Republica Dominicana&nbsp;(CEI-RD)</a></li>
	<li><a href="http://cdc.gob.do" target="_blank" title="Comisión de Defensa Comercial">Comisi&oacute;n de Defensa Comercial</a> (CDC)</li>
	<li><a href="http://cnzfe.gob.do" target="_blank" title="Consejo Nacional de Zonas Francas de Exportaciones">Consejo Nacional de Zonas Francas de Exportaciones</a> (CNZFE)</li>
	<li><a href="http://consultoria.gov.do" target="_blank" title="Consultoría Jurídica del Poder Ejecutivo">Consultor&iacute;a Jur&iacute;dica del Poder Ejecutivo</a> (CJPE)</li>
	<li><a href="http://aduanas.gob.do" target="_blank" title="Dirección General de Aduanas">Direcci&oacute;n General de Aduanas</a> (DGA)</li>
	<li><a href="http://indotel.gob.do" target="_new" title="Instituto Dominicano de las Telecomunicaciones">Instituto Dominicano de las Telecomunicaciones</a> (INDOTEL)</li>
	<li><a href="http://agricultura.gob.do" target="_blank" title="Ministerio de Agricultura">Ministerio de Agricultura</a></li>
	<li><a href="http://hacienda.gov.do" target="_blank" title="Ministerio de Hacienda">Ministerio de Hacienda</a> (MH)</li>
	<li><a href="http://ambiente.gob.do" target="_blank" title="Ministerio de Medioambiente">Ministerio de Medioambiente</a></li>
	<li><a href="http://mirex.gob.do" target="_blank" title="Ministerio de Relaciones Exteriores">Ministerio de Relaciones Exteriores</a> (MIREX)</li>
	<li><a href="http://www.sespas.gov.do/" target="_blank">Ministerio de Salud P&uacute;blica y Asistencia Social&nbsp;( MSP)</a></li>
	<li><a href="http://www.ministeriodetrabajo.gob.do/" target="_blank">Ministerio de Trabajo&nbsp;(MT)</a></li>
	<li><a href="http://www.sectur.gob.do/" target="_blank">Ministerio de Turismo&nbsp;(MITUR)</a></li>
	<li><a href="http://otcasea.gob.do/" target="_blank">Oficina de Tratados Comerciales Agr&iacute;colas&nbsp;del Ministerio de Agricultura (OTCA)</a></li>
	<li><a href="http://onapi.gov.do" target="_blank" title="Oficina Nacional de la Propiedad Industrial">Oficina Nacional de la Propiedad Industrial</a> (ONAPI)</li>
	<li><a href="http://odci.org.do/miembros/adoexpo/" target="_blank">Asociaci&oacute;n Dominicana de Exportadores</a> (ADOEXPO)</li>
	<li><a href="http://odci.org.do/miembros/adozona/" target="_blank">Asociaci&oacute;n Dominicana de Zonas Francas (ADOZONA)</a></li>
</ul>
</div>
</div>

<div class="content" id="content_5" style="display: none;">
<div class="content-info">
<h3>Marco Legal</h3>

<div id="dt_example">
<div class="dataTables_wrapper">
<div class="dataTables_length">Mostrar <select size="1"><option value="10">10</option><option value="25">25</option><option value="50">50</option><option value="100">100</option></select> entradas</div>

<div class="dataTables_filter">Buscar: <input type="text" /></div>

<table border="0" cellpadding="0" cellspacing="0" class="display micDicoex" style="width:100%">
	<thead>
		<tr>
			<th colspan="1" rowspan="1" style="width:80px">T&iacute;tulo</th>
			<th colspan="1" rowspan="1" style="width:20px">Fecha</th>
		</tr>
	</thead>
	<tfoot>
		<tr>
			<th colspan="1" rowspan="1">T&iacute;tulo</th>
			<th colspan="1" rowspan="1">Fecha</th>
		</tr>
	</tfoot>
	<tbody>
		<tr>
			<td><img src="/umbraco/images/umbraco/page_white_acrobat.png" />&nbsp; <a href="/media/20876/Ley No. 392-07, del 04 de diciembre del 2007, sobre Competitividad e Innovación Industrial.pdf" target="_blank" title="Ley No. 392-07, del 04 de diciembre del 2007, sobre Competitividad e Innovación Industrial.pdf">Ley No. 392-07, del 04 de diciembre del 2007, sobre Competitividad e Innovaci&oacute;n Industrial.pdf</a></td>
			<td>2015/08/18</td>
		</tr>
		<tr>
			<td><img src="/umbraco/images/umbraco/page_white_acrobat.png" />&nbsp; <a href="/media/20875/Ley No. 173-66, del 06 de abril del 1966, sobre Protección a los Agentes Importadores de Mercaderías y Productos.pdf" target="_blank" title="Ley No. 173-66, del 06 de abril del 1966, sobre Protección a los Agentes Importadores de Mercaderías y Productos.pdf">Ley No. 173-66, del 06 de abril del 1966, sobre Protecci&oacute;n a los Agentes Importadores de Mercader&iacute;as y Productos.pdf</a></td>
			<td>2015/08/18</td>
		</tr>
		<tr>
			<td><img src="/umbraco/images/umbraco/page_white_acrobat.png" />&nbsp; <a href="/media/20874/Ley No. 146-00, del 27 de diciembre del 2000, sobre Reforma Arancelaria.pdf" target="_blank" title="Ley No. 146-00, del 27 de diciembre del 2000, sobre Reforma Arancelaria.pdf">Ley No. 146-00, del 27 de diciembre del 2000, sobre Reforma Arancelaria.pdf</a></td>
			<td>2015/08/18</td>
		</tr>
		<tr>
			<td><img src="/umbraco/images/umbraco/page_white_acrobat.png" />&nbsp; <a href="/media/20873/Ley No. 126-02, del 04 de septiembre del 2002, sobre Comercio Electrónico, Documentos y Firmas Digitales.pdf" target="_blank" title="Ley No. 126-02, del 04 de septiembre del 2002, sobre Comercio Electrónico, Documentos y Firmas Digitales.pdf">Ley No. 126-02, del 04 de septiembre del 2002, sobre Comercio Electr&oacute;nico, Documentos y Firmas Digitales.pdf</a></td>
			<td>2015/08/18</td>
		</tr>
		<tr>
			<td><img src="/umbraco/images/umbraco/page_white_acrobat.png" />&nbsp; <a href="/media/20872/Ley No. 84-99, del 06 de agosto del 1999, sobre Reactivación y Fomento de las Exportaciones.pdf" target="_blank" title="Ley No. 84-99, del 06 de agosto del 1999, sobre Reactivación y Fomento de las Exportaciones.pdf">Ley No. 84-99, del 06 de agosto del 1999, sobre Reactivaci&oacute;n y Fomento de las Exportaciones.pdf</a></td>
			<td>2015/08/18</td>
		</tr>
	</tbody>
</table>

<div class="dataTables_info">Mostrando 1 a 5 de 13 entradas</div>

<div class="dataTables_paginate paging_two_button">
<div class="paginate_disabled_previous" title="Anterior">&nbsp;</div>

<div class="paginate_enabled_next" title="Siguiente">&nbsp;</div>
</div>
</div>
</div>
</div>
</div>

<div class="content" id="content_6" style="display: none;">
<div class="content-info">
<h3>Tratados Comerciales</h3>

<ul>
	<li><a href="/direcciones/comercio-exterior/acuerdos-comerciales-vigentes/tratado-rd-comunidad-del-caribe.aspx" target="_blank">Tratado RD - Comunidad del Caribe</a></li>
	<li><a href="/direcciones/comercio-exterior/acuerdos-comerciales-vigentes/tratado-rd-centroamérica.aspx" target="_blank">Tratado RD - Centroam&eacute;rica</a></li>
	<li><a href="/direcciones/comercio-exterior/acuerdos-comerciales-vigentes/acuerdo-rd-panamá.aspx" target="_blank">Acuerdo RD - Panam&aacute;</a></li>
	<li><a href="/direcciones/comercio-exterior/acuerdos-comerciales-vigentes/tratado-rd-centroamérica-estados-unidos.aspx" target="_blank">Tratado RD - Centroam&eacute;rica - Estados Unidos</a></li>
	<li><a href="/direcciones/comercio-exterior/acuerdos-comerciales-vigentes/acuerdo-cariforo-unión-europea.aspx" target="_blank">Acuerdo CARIFORO - Uni&oacute;n Europea o EPA</a></li>
</ul>
</div>
</div>

<div class="content" id="content_7" style="display: none;">
<div class="content-info">
<h3>Documentos de Comercio Exterior</h3>

<h3>PUBLICACIONES</h3>

<div id="dt_example">
<div class="dataTables_wrapper">
<div class="dataTables_length">Mostrar <select size="1"><option value="10">10</option><option value="25">25</option><option value="50">50</option><option value="100">100</option></select> entradas</div>

<div class="dataTables_filter">Buscar: <input type="text" /></div>

<table border="0" cellpadding="0" cellspacing="0" class="display micDicoex" style="width:100%">
	<thead>
		<tr>
			<th colspan="1" rowspan="1" style="width:80px">T&iacute;tulo</th>
			<th colspan="1" rowspan="1" style="width:20px">Fecha</th>
		</tr>
	</thead>
	<tfoot>
		<tr>
			<th colspan="1" rowspan="1">T&iacute;tulo</th>
			<th colspan="1" rowspan="1">Fecha</th>
		</tr>
	</tfoot>
	<tbody>
		<tr>
			<td><img src="/umbraco/images/umbraco/page_white_acrobat.png" />&nbsp; <a href="/media/64872/barreras tecnicas al comercio.pdf" target="_blank" title="Barreras Técnicas al Comercio">Barreras T&eacute;cnicas al Comercio</a></td>
			<td>2011/12/10</td>
		</tr>
		<tr>
			<td><img src="/umbraco/images/umbraco/page_white_acrobat.png" />&nbsp; <a href="/media/64855/la ronda doha para el desarrollo.pdf" target="_blank" title="La Ronda Doha para el Desarrollo">La Ronda Doha para el Desarrollo</a></td>
			<td>2011/12/10</td>
		</tr>
		<tr>
			<td><img src="/umbraco/images/umbraco/page_white_acrobat.png" />&nbsp; <a href="/media/2284/Prácticas Desleales al Comercio Internacional.pdf" target="_blank" title="Prácticas Desleales al Comercio Internacional">Pr&aacute;cticas Desleales al Comercio Internacional</a></td>
			<td>2011/11/23</td>
		</tr>
		<tr>
			<td><img src="/umbraco/images/umbraco/page_white_acrobat.png" />&nbsp; <a href="/media/2283/Las Ventajas Competitivas de la Región Norte.pdf" target="_blank" title="Las Ventajas Competitivas de la Región Norte">Las Ventajas Competitivas de la Regi&oacute;n Norte</a></td>
			<td>2011/11/23</td>
		</tr>
		<tr>
			<td><img src="/umbraco/images/umbraco/page_white_acrobat.png" />&nbsp; <a href="/media/2282/Las Cuotas de Importación del DR-CAFTA.pdf" target="_blank" title="Las Cuotas de Importación del DR-CAFTA">Las Cuotas de Importaci&oacute;n del DR-CAFTA</a></td>
			<td>2011/11/23</td>
		</tr>
	</tbody>
</table>

<div class="dataTables_info">Mostrando 1 a 5 de 15 entradas</div>

<div class="dataTables_paginate paging_two_button">
<div class="paginate_disabled_previous" title="Anterior">&nbsp;</div>

<div class="paginate_enabled_next" title="Siguiente">&nbsp;</div>
</div>
</div>
</div>

<p>&nbsp;</p>

<h3>TEMAS DE INTER&Eacute;S</h3>

<div id="dt_example">
<div class="dataTables_wrapper">
<div class="dataTables_length">Mostrar <select size="1"><option value="10">10</option><option value="25">25</option><option value="50">50</option><option value="100">100</option></select> entradas</div>

<div class="dataTables_filter">Buscar: <input type="text" /></div>

<table border="0" cellpadding="0" cellspacing="0" class="display micDicoex" style="width:100%">
	<thead>
		<tr>
			<th colspan="1" rowspan="1" style="width:80px">T&iacute;tulo</th>
			<th colspan="1" rowspan="1" style="width:20px">Fecha</th>
		</tr>
	</thead>
	<tfoot>
		<tr>
			<th colspan="1" rowspan="1">T&iacute;tulo</th>
			<th colspan="1" rowspan="1">Fecha</th>
		</tr>
	</tfoot>
	<tbody>
		<tr>
			<td><img src="/umbraco/images/umbraco/page_white_acrobat.png" />&nbsp; <a href="/media/20889/Intercambios Comerciales con República Dominicana.pdf" target="_blank" title="Intercambios Comerciales con República Dominicana.pdf">Intercambios Comerciales con Rep&uacute;blica Dominicana.pdf</a></td>
			<td>2015/08/18</td>
		</tr>
	</tbody>
</table>

<div class="dataTables_info">Mostrando 1 a 1 de 1 entradas</div>

<div class="dataTables_paginate paging_two_button">
<div class="paginate_disabled_previous" title="Anterior">&nbsp;</div>

<div class="paginate_disabled_next" title="Siguiente">&nbsp;</div>
</div>
</div>
</div>
</div>
</div>

<div class="content" id="content_8" style="display: none;">
<div class="content-info">
<h3>Ofertas Exportables</h3>

<div id="dt_example">
<div class="dataTables_wrapper">
<div class="dataTables_length">Mostrar <select size="1"><option value="10">10</option><option value="25">25</option><option value="50">50</option><option value="100">100</option></select> entradas</div>

<div class="dataTables_filter">Buscar: <input type="text" /></div>

<table border="0" cellpadding="0" cellspacing="0" class="display micDicoex" style="width:100%">
	<thead>
		<tr>
			<th colspan="1" rowspan="1" style="width:80px">T&iacute;tulo</th>
			<th colspan="1" rowspan="1" style="width:20px">Fecha</th>
		</tr>
	</thead>
	<tfoot>
		<tr>
			<th colspan="1" rowspan="1">T&iacute;tulo</th>
			<th colspan="1" rowspan="1">Fecha</th>
		</tr>
	</tfoot>
	<tbody>
		<tr>
			<td><img src="/umbraco/images/umbraco/page_white_acrobat.png" />&nbsp; <a href="/media/20884/Unión Europea-EPA - Principales Productos Exportados-Importados 2014.pdf" target="_blank" title="Unión Europea-EPA - Principales Productos Exportados-Importados 2014.pdf">Uni&oacute;n Europea-EPA - Principales Productos Exportados-Importados 2014.pdf</a></td>
			<td>2015/08/18</td>
		</tr>
		<tr>
			<td><img src="/umbraco/images/umbraco/page_white_acrobat.png" />&nbsp; <a href="/media/20883/Panamá - Principales Productos Exportados-Importados 2014.pdf" target="_blank" title="Panamá - Principales Productos Exportados-Importados 2014.pdf">Panam&aacute; - Principales Productos Exportados-Importados 2014.pdf</a></td>
			<td>2015/08/18</td>
		</tr>
		<tr>
			<td><img src="/umbraco/images/umbraco/page_white_acrobat.png" />&nbsp; <a href="/media/20882/EEUU - Principales Productos Exportados-Importados 2014.pdf" target="_blank" title="EEUU - Principales Productos Exportados-Importados 2014.pdf">EEUU - Principales Productos Exportados-Importados 2014.pdf</a></td>
			<td>2015/08/18</td>
		</tr>
		<tr>
			<td><img src="/umbraco/images/umbraco/page_white_acrobat.png" />&nbsp; <a href="/media/20881/Centroamérica - Principales Productos Exportados-Importados 2014.pdf" target="_blank" title="Centroamérica - Principales Productos Exportados-Importados 2014.pdf">Centroam&eacute;rica - Principales Productos Exportados-Importados 2014.pdf</a></td>
			<td>2015/08/18</td>
		</tr>
		<tr>
			<td><img src="/umbraco/images/umbraco/page_white_acrobat.png" />&nbsp; <a href="/media/20880/CARICOM - Principales Productos Exportados-Importados 2014.pdf" target="_blank" title="CARICOM - Principales Productos Exportados-Importados 2014.pdf">CARICOM - Principales Productos Exportados-Importados 2014.pdf</a></td>
			<td>2015/08/18</td>
		</tr>
	</tbody>
</table>

<div class="dataTables_info">Mostrando 1 a 5 de 5 entradas</div>

<div class="dataTables_paginate paging_two_button">
<div class="paginate_disabled_previous" title="Anterior">&nbsp;</div>

<div class="paginate_disabled_next" title="Siguiente">&nbsp;</div>
</div>
</div>
</div>
</div>
</div>

<div class="content" id="content_9" style="display: none;">
<div class="content-info">
<h3>Gu&iacute;a para Exportar</h3>

<p>En construcci&oacute;n.</p>
<!--
<p><strong>DECRETO No. 377 DEL 1992,</strong> QUE ELIMINA EL  REQUERIMIENTO DE TENER LA LICENCIA DE EXPORTADOR.</p>
<p><strong>FORMULARIO No. 003-07,</strong> denominado  Declaración Única Aduanera (DUA), que sustituye los formularios de declaración  de Importación y Exportación.</p>
<p>1. Registro del nombre en ONAPI.<br> 2. Registro en la Cámara de Comercio y obtener el Registro Mercantil, persona jurídica.<br> 3. Registro Nacional del Contribuyente (RNC) o Cédula de Identidad Personal.<br> 4. Solicitar mediante una comunicación a la DGA, el registro en el SIGA como importador o exportador.<br> 5. Obtener el Token en la DGA para tener acceso al Sistema SIGA y realizar el registro en la Consultaría Jurídica de la Dirección General de Aduanas.</p>
<p>Poseer el conocimiento sobre Legislación Aduanera, Nomenclatura Arancelaria, Procedimientos Aduaneros (Declaración Aduanera, Regímenes Aduaneros, Endoso, Verificación y Aforo, Aplicación de Preferencias Arancelarias, Acuerdos Comerciales, Despacho a Priori, Verificación a Destino, Despacho Expreso, Fiscalización a Posteriori), así como conocer de las implicaciones de la mala declaración aduanera por: a) Partida arancelaria, b) Subvaluación, c) Sobrevaluación, d) Origen, entre otros. Además conocer sobre los ilícitos aduaneros.</p>
<h3>Trámites Generales de Exportación</h3>
<p><strong>Base Legal:</strong> Decreto 646-96, que establece el Formulario Único de Exportación.</p>
<p><strong>Requerimientos:</strong>Factura Comercial; Declaración del Formulario Único de Exportación.</p>
<p>Con las informaciones  de la Factura Comercial se procede al llenado del Formulario Único de Exportación.  El mismo debe ser firmado por el exportador.</p>
<h3>Trámites Locales por Producto</h3>
<p>1. En el caso de los productos de origen animal, el  exportador debe presentar un certificado zoosanitario emitido por la Oficina de  Sanidad Animal de la Secretaría de Estado de Agricultura (en las oficinas del  puerto de salida del producto). Este se emite, luego de verificar físicamente  el producto a exportar.<br> 2. En el caso de productos de origen vegetal, el  exportador debe presentar un certificado fitosanitario, siguiendo el  procedimiento anterior.<br> 3. Dependiendo el mercado al cual se dirigen las  exportaciones, además de los documentos solicitados internamente en el país, el  exportador debe enviar en cada embarque (sí lo pide el importador) un  certificado de origen: a) Centroamérica: Certificado de Libre Comercio entre  República Dominicana y Centroamérica; b) Panamá: Certificado de Origen Tratado  Comercial entre la República Dominicana y la República de Panamá; c) El Caribe:  Certificado de Origen CARICOM; d) Estados Unidos: SGP Form A, Caribbean Basin  Trade Partnership Act (CBTPA); e) La Unión Europea: Certificado de Circulación  de Mercancías EUR-1, SGP Form A; f) Canadá, Japón, Suiza, Noruega, Europa  Oriental, Nueva Zelanda y Australia: SGP Form A; g) Todos los países:  Certificado de Origen de la República Dominicana.</p>
<p>Nota: Estos  certificados de origen son sellados y firmado por el CEI-RD, siempre y cuando  el producto cumpla con la regla de origen establecida por los diferentes  Esquemas Preferenciales y Acuerdos Comerciales subscritos por el país.</p>
<h3 style="margin: 12px 0 !important;" _mce_style="margin: 12px 0 !important;"><a href="/media/20878/Tramites%20por%20Productos%20e%20Instituciones.pdf" _mce_href="/media/20878/Tramites%20por%20Productos%20e%20Instituciones.pdf" target="_blank">Tramites por Productos e Instituciones</a></h3>
--></div>
</div>

<div class="content" id="content_10" style="display: none;">
<div class="content-info">
<h3>Cursos y Capacitaciones sobre Comercio</h3>

<h3><a href="https://www.edx.org/school/idbx" target="_blank" title="Las Nuevas Tendencias en los Tratados Comerciales en América Latina">Las Nuevas Tendencias en los Tratados Comerciales en Am&eacute;rica Latina</a></h3>
</div>
</div>

<div class="content" id="content_11" style="display: none;">
<div class="content-info">
<h3>Consultas</h3>

<p>Para realizarnos cualquier tipo de consulta, puede hacerlo a trav&eacute;s del&nbsp;<a href="/transparencia/servicios-en-linea/formulario-solicitud-de-informacion-en-linea.aspx" target="_blank">Formulario de Solicitud de Informaci&oacute;n en L&iacute;nea</a> del Ministerio.</p>
</div>
</div>

<div class="content" id="content_12" style="display: none;">
<div class="content-info">
<h3>Contacto para Servicios</h3>

<h5>Ministerio de Industria y Comercio<br />
Viceministerio de Comercio Exterior<br />
Edificio de Tratados Comerciales.<br />
Av. 27 de Febrero No. 209, Naco.<br />
Santo Domingo, D. N. Rep. Dom.<br />
Tel.: 809 567-7192 ext.: 1084</h5>
</div>
</div>
</div>
</div>
</div>
</div>
', 1100, N'/Files/find/1101?filename=jk5fqhp2pmyj6l6sczb5-product-10.jpg', N'/Files/find/1101?filename=twx99ubjpqrady269h6y-product-10-z.jpg', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[articulos_contenido] ([id], [id_title], [titulo], [subtitulo], [contenido], [parent_id], [image_presentation_1], [image_presentation_2], [fecha], [fecha_publicacion], [tags], [avalible_edit], [avalible_childrens]) VALUES (1102, N'Comercio-Interno', N'Comercio Interno', N'Sobre el Viceministerio:', N'<p>El Viceministerio de Comercio Interno conforme al Plan Estrat&eacute;gico Institucional del Ministerio de Industria y Comercio (MIC), tiene el rol de fomentar y generar iniciativas y estrategias que desarrollen la productividad nacional, regular la oferta de bienes y servicios, implementar una cultura de calidad en la producci&oacute;n nacional y velar por la coherencia normativa del sector.</p>

<h3>Perfil del Funcionario</h3>

<ul>
	<li>
	<table border="0" cellpadding="0" cellspacing="0" style="width:100%">
		<tbody>
			<tr>
				<td><img src="http://mic.gob.do/umbraco/images/umbraco/page_white_acrobat.png" />&nbsp;</td>
				<td><a href="http://mic.gob.do/media/958652/lic.%20enrique%20radham%C3%A9s%20segura%20qui%C3%B1ones.pdf" target="_blank">Lic. Enrique Radham&eacute;s Segura Qui&ntilde;ones</a>
				<p>Viceministro de Comercio Interno</p>
				</td>
				<td>2016/03/30</td>
				<td><em>282.6 KB</em></td>
			</tr>
		</tbody>
	</table>
	</li>
</ul>

<h3>Funciones</h3>

<p>El Viceministerio de Comercio Interno tiene a su cargo las siguientes atribuciones:</p>

<ul>
	<li>Generar iniciativas y estrategias de fomento del comercio interno de bienes y servicios y controlar su cumplimiento exceptuando aquella que se refiera al az&uacute;car.</li>
	<li>Monitorear los sistemas de comercializaci&oacute;n de bienes y servicios, incluyendo aquellos regulados por leyes especiales.</li>
	<li>Dar seguimiento a las pol&iacute;ticas p&uacute;blicas dictadas por el Ministerio en las materias de su competencia y que ejecutan los organismos descentralizados adscritos al Ministerio, especialmente aquellas en materia de: regulaci&oacute;n de la calidad, desarrollo de normas y sistemas, promoci&oacute;n de la competencia y protecci&oacute;n del consumidor.</li>
	<li>Coordinar acciones entre el sector p&uacute;blico y el privado, con el objetivo de implementar las pol&iacute;ticas comerciales internas y dar continuidad a acciones conjuntas con &oacute;rganos afines y complementarios de la administraci&oacute;n p&uacute;blica.</li>
	<li>Implementar an&aacute;lisis de mercado o econ&oacute;micos que permitan generar estad&iacute;sticas de comercio interno y determinar las condiciones del mercado de bienes y servicios relevantes para el mercado interno. Asimismo, se podr&aacute; caracterizar la actividad comercial e identificar obst&aacute;culos en las cadenas de comercializaci&oacute;n. Con estos an&aacute;lisis tambi&eacute;n se podr&aacute; conocer las caracter&iacute;sticas de desempe&ntilde;o del sector, su amplitud, canales e intermediaci&oacute;n en la comercializaci&oacute;n, m&aacute;rgenes de intermediaci&oacute;n, seguridad en los productos, reg&iacute;menes de garant&iacute;a, indicadores de precios desde la &oacute;ptica de la oferta, entre otros. Estudios y publicaciones separados pudieran generarse de tales an&aacute;lisis.</li>
	<li>Promover alianzas estrat&eacute;gicas con instituciones p&uacute;blicas y privadas que generen informaci&oacute;n relevante sobre el funcionamiento del mercado interno y desarrollar acciones para el desarrollo del sector.</li>
	<li>Promover nuevas formas de comercio que permitan acercar &nbsp;los fabricantes a los consumidores eliminando costos intermedios, complementando ofertas e incrementando la competencia.</li>
	<li>Autorizar la creaci&oacute;n, habilitaci&oacute;n, renovaci&oacute;n y extensi&oacute;n de los Almacenes Generales de Dep&oacute;sitos a nivel nacional.</li>
	<li>A trav&eacute;s de su Direcci&oacute;n de Combustible, ejecutar las funciones que son competencia del Ministerio de Industria, Comercio y Pymes en materia de comercializaci&oacute;n, control y abastecimiento del mercado interno de derivados de productos del petr&oacute;leo.</li>
	<li>A trav&eacute;s de su Direcci&oacute;n de Combustible No-Convencionales, ejecutar las funciones que son competencia del Ministerio de Industria, Comercio y Pymes en materia de fomento, comercializaci&oacute;n, control y abastecimiento del mercado interno de combustible no convencionales.</li>
	<li>Cualquier otra funci&oacute;n que le sea encomendada por el (la) Ministro (a), o por las leyes, reglamentos y resoluciones que pudieren surgir con posterioridad a la presente ley.</li>
</ul>

<h3>Proyectos</h3>

<ul>
	<li><a href="http://mic.gob.do/viceministerios/comercio-interno/proyectos/rep%C3%BAblica-dominicana-produce.aspx">Rep&uacute;blica Dominicana Produce</a></li>
	<li><a href="http://mic.gob.do/viceministerios/comercio-interno/proyectos/fortalecimiento-de-la-industria-y-el-comercio-vinculados-al-sector-l%C3%A1cteos.aspx">Fortalecimiento de la Industria y el Comercio Vinculados al Sector L&aacute;cteos</a></li>
</ul>

<h3><a href="http://mic.gob.do/viceministerios/comercio-interno/registro-de-identificaci%C3%B3n-de-los-evaluadores-de-la-conformidad.aspx" title="Registro de Identificación de los Evaluadores de la Conformidad">Registro de Identificaci&oacute;n de los Evaluadores de la Conformidad</a></h3>

<h3>Otras actividades del Viceministerio de Comercio Interno:</h3>

<ul>
	<li>Meta Presidencial de Calidad.</li>
	<li>Plan Nacional de Inocuidad y Calidad en el Sector Alimentos.</li>
	<li><a href="http://mic.gob.do/viceministerios/comercio-interno/internaci%C3%B3n-de-productos.aspx" title="Internación de Productos">Internaci&oacute;n de Productos.</a></li>
	<li>Participaci&oacute;n como Representante de los Consejos Directivos Institucionales:
	<ul>
		<li>Instituto Dominicano para la Calidad (INDOCAL).</li>
		<li>Oficina Nacional de la Propiedad Industrial (ONAPI).</li>
		<li>Instituto de Innovaci&oacute;n en Biotecnolog&iacute;a e Industria (IIBI).</li>
		<li>Instituto Nacional de Protecci&oacute;n de los Derechos de Consumidor (Pro Consumidor).</li>
		<li>Comisi&oacute;n Nacional de Defensa de la Competencia (Pro Competencia).</li>
		<li>Consejo Nacional para la Reglamentaci&oacute;n y el Fomento de la Industria Lechera (CONALECHE).</li>
		<li>Instituto de Estabilizaci&oacute;n de Precios (INESPRE).</li>
	</ul>
	</li>
</ul>

<h3>Legislaci&oacute;n Alimentaria</h3>

<ul>
	<li>
	<table border="0" cellpadding="0" cellspacing="0" style="width:100%">
		<tbody>
			<tr>
				<td><img src="http://mic.gob.do/umbraco/images/umbraco/page_white_acrobat.png" />&nbsp;</td>
				<td><a href="http://mic.gob.do/media/19260/Ley%20No.%2042-01,%20de%20fecha%2010%20de%20marzo%20del%20a%C3%B1o%202001,%20Ley%20General%20de%20Salud.pdf" target="_blank">Ley No. 42-01, de fecha 10 de marzo del a&ntilde;o 2001, Ley General de Salud.pdf</a></td>
				<td>2015/07/06</td>
				<td><em>176.3 KB</em></td>
			</tr>
		</tbody>
	</table>
	</li>
	<li>
	<table border="0" cellpadding="0" cellspacing="0" style="width:100%">
		<tbody>
			<tr>
				<td><img src="http://mic.gob.do/umbraco/images/umbraco/page_white_acrobat.png" />&nbsp;</td>
				<td><a href="http://mic.gob.do/media/19259/Decreto%20No.%20528-01,%20de%20fecha%2014%20de%20mayo%20del%20a%C3%B1o%202001,%20Reglamento%20General%20para%20Control%20de%20Riesgos%20en%20Alimentos%20y%20Bebidas%20en%20la%20Rep%C3%BAblica%20Dominicana.pdf" target="_blank">Decreto No. 528-01, de fecha 14 de mayo del a&ntilde;o 2001, Reglamento General para Control de Riesgos en Alimentos y Bebidas en la Rep&uacute;blica Dominicana.pdf</a></td>
				<td>2015/07/06</td>
				<td><em>941.9 KB</em></td>
			</tr>
		</tbody>
	</table>
	</li>
	<li>
	<table border="0" cellpadding="0" cellspacing="0" style="width:100%">
		<tbody>
			<tr>
				<td><img src="http://mic.gob.do/umbraco/images/umbraco/page_white_acrobat.png" />&nbsp;</td>
				<td><a href="http://mic.gob.do/media/19270/Ley%20No.%204030,%20de%20fecha%2019%20de%20enero%20del%20a%C3%B1o%201955,%20que%20declara%20de%20inter%C3%A9s%20p%C3%BAblico%20la%20defensa%20sanitaria%20de%20los%20ganados%20de%20la%20Rep%C3%BAblica.pdf" target="_blank">Ley No. 4030, de fecha 19 de enero del a&ntilde;o 1955, que declara de inter&eacute;s p&uacute;blico la defensa sanitaria de los ganados de la Rep&uacute;blica.pdf</a></td>
				<td>2015/07/06</td>
				<td><em>32.7 KB</em></td>
			</tr>
		</tbody>
	</table>
	</li>
	<li>
	<table border="0" cellpadding="0" cellspacing="0" style="width:100%">
		<tbody>
			<tr>
				<td><img src="http://mic.gob.do/umbraco/images/umbraco/page_white_acrobat.png" />&nbsp;</td>
				<td><a href="http://mic.gob.do/media/19264/Ley%20No.%204990,%20de%20fecha%2026%20de%20agosto%20del%20a%C3%B1o%201958,%20sobre%20Sanidad%20Vegetal.pdf" target="_blank">Ley No. 4990, de fecha 26 de agosto del a&ntilde;o 1958, sobre Sanidad Vegetal.pdf</a></td>
				<td>2015/07/06</td>
				<td><em>72.8 KB</em></td>
			</tr>
		</tbody>
	</table>
	</li>
	<li>
	<table border="0" cellpadding="0" cellspacing="0" style="width:100%">
		<tbody>
			<tr>
				<td><img src="http://mic.gob.do/umbraco/images/umbraco/page_white_acrobat.png" />&nbsp;</td>
				<td><a href="http://mic.gob.do/media/19261/Ley%20No.%20166-12,%20de%20fecha%2012%20de%20julio%20del%20a%C3%B1o%202012,%20sobre%20el%20Sistema%20Dominicano%20para%20la%20Calidad%20(SIDOCAL).pdf" target="_blank">Ley No. 166-12, de fecha 12 de julio del a&ntilde;o 2012, sobre el Sistema Dominicano para la Calidad (SIDOCAL).pdf</a></td>
				<td>2015/07/06</td>
				<td><em>320.2 KB</em></td>
			</tr>
		</tbody>
	</table>
	</li>
	<li>
	<table border="0" cellpadding="0" cellspacing="0" style="width:100%">
		<tbody>
			<tr>
				<td><img src="http://mic.gob.do/umbraco/images/umbraco/page_white_acrobat.png" />&nbsp;</td>
				<td><a href="http://mic.gob.do/media/19263/Ley%20No.%203489,%20de%20fecha%2014%20de%20febrero%20del%20a%C3%B1o%201953,%20sobre%20el%20Regimen%20de%20las%20Aduanas.pdf" target="_blank">Ley No. 3489, de fecha 14 de febrero del a&ntilde;o 1953, sobre el Regimen de las Aduanas.pdf</a></td>
				<td>2015/07/06</td>
				<td><em>399.6 KB</em></td>
			</tr>
		</tbody>
	</table>
	</li>
	<li>
	<table border="0" cellpadding="0" cellspacing="0" style="width:100%">
		<tbody>
			<tr>
				<td><img src="http://mic.gob.do/umbraco/images/umbraco/page_white_acrobat.png" />&nbsp;</td>
				<td><a href="http://mic.gob.do/media/19262/Ley%20No.%20358-05,%20de%20fecha%209%20de%20septiembre%20del%20a%C3%B1o%202005,%20sobre%20Protecci%C3%B3n%20de%20los%20Derechos%20del%20Consumidor%20o%20Usuario.pdf" target="_blank">Ley No. 358-05, de fecha 9 de septiembre del a&ntilde;o 2005, sobre Protecci&oacute;n de los Derechos del Consumidor o Usuario.pdf</a></td>
				<td>2015/07/06</td>
				<td><em>3.4 MB</em></td>
			</tr>
		</tbody>
	</table>
	</li>
</ul>

<p>&nbsp;</p>

<h3>Contacto para Servicios</h3>

<h5>Ministerio de Industria y Comercio<br />
Viceministerio de Comercio Interno<br />
Edificio de Tratados Comerciales.<br />
Av. 27 de Febrero No. 209, Naco.<br />
Santo Domingo, D. N. Rep. Dom.<br />
Tel.:&nbsp;809 567-7192 ext.: 1002</h5>
', 1100, N'/Files/find/1102?filename=g2tul5s2vjws9m47shf4-product-11.jpg', N'/Files/find/1102?filename=9kubcv22s5m95jyrhz7e-product-11-z.jpg', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[articulos_contenido] ([id], [id_title], [titulo], [subtitulo], [contenido], [parent_id], [image_presentation_1], [image_presentation_2], [fecha], [fecha_publicacion], [tags], [avalible_edit], [avalible_childrens]) VALUES (1103, N'Desarrollo-Industrial', N'Desarrollo Industrial', N'Desarrollo Industrial', NULL, 1100, N'/Files/find/1103?filename=rcdvqwkj99taqt8afzqt-product-12.jpg', N'/Files/find/1103?filename=pfzxu2c28xfl2hbagr48-product-12-z.jpg', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[articulos_contenido] ([id], [id_title], [titulo], [subtitulo], [contenido], [parent_id], [image_presentation_1], [image_presentation_2], [fecha], [fecha_publicacion], [tags], [avalible_edit], [avalible_childrens]) VALUES (1104, N'Fomento-a-la-PYMES', N'Fomento a la PYMES', NULL, NULL, 1100, N'/Files/find/1104?filename=8l9ttcqjly2vt5vl8qhj-product-13-z.jpg', N'/Files/find/1104?filename=fdv5qxf27jbquzhdal7w-product-13.jpg', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[articulos_contenido] ([id], [id_title], [titulo], [subtitulo], [contenido], [parent_id], [image_presentation_1], [image_presentation_2], [fecha], [fecha_publicacion], [tags], [avalible_edit], [avalible_childrens]) VALUES (1105, N'Zonas-Francas', N'Zonas Francas', NULL, N'<p>Nuevos</p>
', 1100, N'/Files/find/1105?filename=jan8lw627t4583syhuau-product-12-z.jpg', N'/Files/find/1105?filename=4eemwad2ssyxh27r6cr6-product-12.jpg', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[articulos_contenido] ([id], [id_title], [titulo], [subtitulo], [contenido], [parent_id], [image_presentation_1], [image_presentation_2], [fecha], [fecha_publicacion], [tags], [avalible_edit], [avalible_childrens]) VALUES (1106, N'Marco-Legal-del-Sistema-de-Transparencia', N'Marco Legal del Sistema de Transparencia', N'Marco Legal del Sistema de Transparencia', NULL, 59, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[articulos_contenido] ([id], [id_title], [titulo], [subtitulo], [contenido], [parent_id], [image_presentation_1], [image_presentation_2], [fecha], [fecha_publicacion], [tags], [avalible_edit], [avalible_childrens]) VALUES (1107, N'Estructura-Organica-de-la-Institucion', N'Estructura Orgánica de la Institución', N'Estructura Orgánica de la Institución', NULL, 59, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[articulos_contenido] ([id], [id_title], [titulo], [subtitulo], [contenido], [parent_id], [image_presentation_1], [image_presentation_2], [fecha], [fecha_publicacion], [tags], [avalible_edit], [avalible_childrens]) VALUES (1108, N'Normativas:-Derechos-de-los-Ciudadanos-de-Acceder-a-la-Informacion-Publica', N'Normativas: Derechos de los Ciudadanos de Acceder a la Información Pública', N'Normativas: Derechos de los Ciudadanos de Acceder a la Información Pública', NULL, 59, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[articulos_contenido] ([id], [id_title], [titulo], [subtitulo], [contenido], [parent_id], [image_presentation_1], [image_presentation_2], [fecha], [fecha_publicacion], [tags], [avalible_edit], [avalible_childrens]) VALUES (1109, N'Oficina-de-Libre-Acceso-a-la-Informacion', N'Oficina de Libre Acceso a la Información', N'Oficina de Libre Acceso a la Información', NULL, 59, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[articulos_contenido] ([id], [id_title], [titulo], [subtitulo], [contenido], [parent_id], [image_presentation_1], [image_presentation_2], [fecha], [fecha_publicacion], [tags], [avalible_edit], [avalible_childrens]) VALUES (1110, N'Plan-Estrategico', N'Plan Estratégico', N'Plan Estratégico', NULL, 59, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[articulos_contenido] ([id], [id_title], [titulo], [subtitulo], [contenido], [parent_id], [image_presentation_1], [image_presentation_2], [fecha], [fecha_publicacion], [tags], [avalible_edit], [avalible_childrens]) VALUES (1111, N'Publicaciones-Oficiales', N'Publicaciones Oficiales', N'Publicaciones Oficiales', NULL, 59, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[articulos_contenido] ([id], [id_title], [titulo], [subtitulo], [contenido], [parent_id], [image_presentation_1], [image_presentation_2], [fecha], [fecha_publicacion], [tags], [avalible_edit], [avalible_childrens]) VALUES (1112, N'Estadisticas-Institucionales', N'Estadísticas Institucionales', N'Estadísticas Institucionales', NULL, 59, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[articulos_contenido] ([id], [id_title], [titulo], [subtitulo], [contenido], [parent_id], [image_presentation_1], [image_presentation_2], [fecha], [fecha_publicacion], [tags], [avalible_edit], [avalible_childrens]) VALUES (1113, N'Servicios-al-Publico', N'Servicios al Público', NULL, NULL, 59, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[articulos_contenido] ([id], [id_title], [titulo], [subtitulo], [contenido], [parent_id], [image_presentation_1], [image_presentation_2], [fecha], [fecha_publicacion], [tags], [avalible_edit], [avalible_childrens]) VALUES (1114, N'Acceso-al-Portal-311-(Quejas,-Reclamaciones,-Sugerencias-y-Denuncias)', N'Acceso al Portal 311 (Quejas, Reclamaciones, Sugerencias y Denuncias)', NULL, NULL, 59, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[articulos_contenido] ([id], [id_title], [titulo], [subtitulo], [contenido], [parent_id], [image_presentation_1], [image_presentation_2], [fecha], [fecha_publicacion], [tags], [avalible_edit], [avalible_childrens]) VALUES (1115, N'Declaraciones-Juradas', N'Declaraciones Juradas', NULL, NULL, 59, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[articulos_contenido] ([id], [id_title], [titulo], [subtitulo], [contenido], [parent_id], [image_presentation_1], [image_presentation_2], [fecha], [fecha_publicacion], [tags], [avalible_edit], [avalible_childrens]) VALUES (1116, N'Presupuesto', N'Presupuesto', NULL, NULL, 59, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[articulos_contenido] ([id], [id_title], [titulo], [subtitulo], [contenido], [parent_id], [image_presentation_1], [image_presentation_2], [fecha], [fecha_publicacion], [tags], [avalible_edit], [avalible_childrens]) VALUES (1117, N'Recursos-Humanos', N'Recursos Humanos', NULL, NULL, 59, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[articulos_contenido] ([id], [id_title], [titulo], [subtitulo], [contenido], [parent_id], [image_presentation_1], [image_presentation_2], [fecha], [fecha_publicacion], [tags], [avalible_edit], [avalible_childrens]) VALUES (1118, N'Beneficiarios-de-Programas-Asistenciales', N'Beneficiarios de Programas Asistenciales', NULL, NULL, 59, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[articulos_contenido] ([id], [id_title], [titulo], [subtitulo], [contenido], [parent_id], [image_presentation_1], [image_presentation_2], [fecha], [fecha_publicacion], [tags], [avalible_edit], [avalible_childrens]) VALUES (1119, N'Compras-y-Contrataciones', N'Compras y Contrataciones', NULL, NULL, 59, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[articulos_contenido] ([id], [id_title], [titulo], [subtitulo], [contenido], [parent_id], [image_presentation_1], [image_presentation_2], [fecha], [fecha_publicacion], [tags], [avalible_edit], [avalible_childrens]) VALUES (1120, N'Proyectos-y-Programas-en-Ejecucion', N'Proyectos y Programas en Ejecución', NULL, NULL, 59, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[articulos_contenido] ([id], [id_title], [titulo], [subtitulo], [contenido], [parent_id], [image_presentation_1], [image_presentation_2], [fecha], [fecha_publicacion], [tags], [avalible_edit], [avalible_childrens]) VALUES (1121, N'Finanzas', N'Finanzas', NULL, NULL, 59, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[articulos_contenido] ([id], [id_title], [titulo], [subtitulo], [contenido], [parent_id], [image_presentation_1], [image_presentation_2], [fecha], [fecha_publicacion], [tags], [avalible_edit], [avalible_childrens]) VALUES (1122, N'Consultas-Publicas-(Ley-200-04)', N'Consultas Públicas (Ley 200-04)', NULL, NULL, 59, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[articulos_contenido] ([id], [id_title], [titulo], [subtitulo], [contenido], [parent_id], [image_presentation_1], [image_presentation_2], [fecha], [fecha_publicacion], [tags], [avalible_edit], [avalible_childrens]) VALUES (1123, N'Aprueban-15-Nuevas-Empresas-de-Zonas-Francas', N'Aprueban 15 Nuevas Empresas de Zonas Francas', N'El Ministro de Industria y Comercio y Presidente del Consejo Nacional de Zonas Francas, Lic. José del Castillo, dio a conocer que, en su última sesión ordinaria del presente año, el Consejo Nacional de Zonas Francas de Exportación aprobó los permisos correspondientes para la instalación de Quince (15) nuevas empresas bajo el régimen de zonas francas de la Ley 8-90.', N'<p>&nbsp;</p>

<p><a href="http://mic.gob.do/media/963856/dsc_4941---.jpg" rel="gallery" title=""><img alt="" src="http://mic.gob.do/ImageGen.ashx?image=/media/963856/dsc_4941---.jpg&amp;width=%20%20286&amp;Constrain=true" /></a></p>

<p>Asimismo, inform&oacute; que en dicha sesi&oacute;n fueron firmados los contratos correspondientes para el desarrollo y operaci&oacute;n de tres nuevos parques de zonas francas.&nbsp;</p>

<p>De acuerdo a las informaciones ofrecidas por el Lic. Del Castillo, para el desarrollo y operaci&oacute;n de sus actividades productivas esas quince nuevas empresas, las mismas han estimado realizar una inversi&oacute;n de RD$1,358 millones, se crear&aacute;n 1,766 empleos directos y se generar&aacute;n divisas por el orden de los US$21.7 millones; mientras que para el desarrollo y operaci&oacute;n de los tres nuevos parques de zonas francas se ha estimado realizar una inversi&oacute;n de RD$1,747 millones, generar divisas por el orden de los US$10.7 millones y la generaci&oacute;n de 3,200 empleos directos.&nbsp;</p>

<p>El Ministro Jos&eacute; del Castillo, expres&oacute; que la decisi&oacute;n de estas nuevas empresas de escoger a la Rep&uacute;blica Dominicana como destino de su inversi&oacute;n, es el resultado de la pol&iacute;tica econ&oacute;mica trazada por superior gobierno, encabezado por el Se&ntilde;or Presidente de la Rep&uacute;blica, Lic. Danilo Medina.&nbsp;</p>

<p>Por su parte, la Lcda. Luisa Fern&aacute;ndez Dur&aacute;n, Directora Ejecutiva del Consejo Nacional de Zonas Francas, manifest&oacute; que con la aprobaci&oacute;n de estas nuevas empresas se pone en evidencia el proceso de diversificaci&oacute;n que se viene registrando en las actividades productivas de las empresas de zonas francas, pues las mismas se dedicar&aacute;n a actividades; adem&aacute;s de que estar&aacute;n diseminadas en varias provincias del pa&iacute;s.&nbsp;</p>

<p>&nbsp;<img alt="DSC_4949---" src="http://mic.gob.do/media/963886/dsc_4949---_295x196.jpg" style="height:196px; width:295px" />&nbsp;&nbsp;&nbsp;<img alt="DSC_4951---" src="http://mic.gob.do/media/963894/dsc_4951---_295x196.jpg" style="height:196px; width:295px" /></p>
', 1076, N'/Files/find/1067?filename=2sap4nf2jpaz8mfflnmc-dsc_4941---.jpg', NULL, CAST(N'2016-05-04 15:29:17.927' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[articulos_contenido] ([id], [id_title], [titulo], [subtitulo], [contenido], [parent_id], [image_presentation_1], [image_presentation_2], [fecha], [fecha_publicacion], [tags], [avalible_edit], [avalible_childrens]) VALUES (1131, N'Ministro-de-Industria-y-Comercio:-Republica-Dominicana-es-el-mayor-exportador-de-calzados-hacia-Estados-Unidos-dentro-del-bloque-de-paises-que-integran-el-DR-CAFTA', N'Ministro de Industria y Comercio: República Dominicana es el mayor exportador de calzados hacia Estados Unidos dentro del bloque de países que integran el DR-CAFTA', N'El ministro de Industria y Comercio, José del Castillo Saviñón, destacó que la República Dominicana es el mayor exportador de calzados hacia los Estados Unidos dentro del bloque de países que integran el Tratado de Libre Comercio entre la República Dominicana, Centroamérica y los Estados Unidos (DR-CAFTA, por sus siglas en inglés)', N'<p><strong>Publicado el:</strong>&nbsp;mi&eacute;rcoles, 04 de mayo de 2016 a las 01:30 p.m.</p>

<h1>Ministro de Industria y Comercio: Rep&uacute;blica Dominicana es el mayor exportador de calzados hacia Estados Unidos dentro del bloque de pa&iacute;ses que integran el DR-CAFTA</h1>

<h3>El ministro de Industria y Comercio, Jos&eacute; del Castillo Savi&ntilde;&oacute;n, destac&oacute; que la Rep&uacute;blica Dominicana es el mayor exportador de calzados hacia los Estados Unidos dentro del bloque de pa&iacute;ses que integran el Tratado de Libre Comercio entre la Rep&uacute;blica Dominicana, Centroam&eacute;rica y los Estados Unidos (DR-CAFTA, por sus siglas en ingl&eacute;s)</h3>

<p><a href="http://mic.gob.do/media/964268/dsc_5039---.jpg" rel="gallery" title=""><img alt="" src="http://mic.gob.do/ImageGen.ashx?image=/media/964268/dsc_5039---.jpg&amp;width=%20%20286&amp;Constrain=true" /></a></p>

<p>Al fungir como el orador principal en la celebraci&oacute;n de la primera convenci&oacute;n de productos realizada en el pa&iacute;s, por parte de la corporaci&oacute;n Rocky Brands, Del Castillo enfatiz&oacute; el crecimiento de la industria del calzado en las zonas francas de la Rep&uacute;blica Dominicana, y resalt&oacute; las oportunidades que ofrece el pa&iacute;s para la instalaci&oacute;n de nuevas empresas manufactureras.</p>

<p>Agreg&oacute; que&nbsp; &quot;Durante los &uacute;ltimos cinco a&ntilde;os, los empleos generados por el sub-sector de calzados se han duplicado, mientras que el pa&iacute;s se ha convertido en uno los mayores productores de calzados en todo el continente americano.&quot;</p>

<p>En la convenci&oacute;n estuvieron presentes altos ejecutivos de m&aacute;s de 20 compa&ntilde;&iacute;as globales dedicadas a la fabricaci&oacute;n de materias primas y componentes para la industria del calzado.</p>

<p>En el marco de la actividad celebrada en el Hotel Gran Almirante de la Ciudad de Santiago, la Corporaci&oacute;n Rocky Brands, que opera en el pa&iacute;s en la Zona Franca de La Vega a trav&eacute;s de su compa&ntilde;&iacute;a subsidiaria Five Star Enterprises, generando m&aacute;s de 1,400 empleos directos, anunci&oacute; la instalaci&oacute;n de un Centro de Desarrollo de Productos en el pa&iacute;s, con una inversi&oacute;n superior a los US$2 millones, el cual estar&aacute; operando dentro de los pr&oacute;ximos dos a&ntilde;os.</p>

<p>El establecimiento de dicho Centro es un ejemplo de la transformaci&oacute;n de los procesos productivos que se llevan a cabo en las zonas francas del pa&iacute;s, los cuales evidencian un mayor grado de contenido tecnol&oacute;gico y &quot;know-how&quot;.</p>

<p>El evento cont&oacute; adem&aacute;s con la asistencia de Luisa Fern&aacute;ndez Dur&aacute;n, Directora Ejecutiva del Consejo Nacional de Zonas Francas de Exportaci&oacute;n (CNZFE).</p>

<p>Fern&aacute;ndez consider&oacute; que dicha actividad es tambi&eacute;n una magn&iacute;fica oportunidad para atraer nuevas inversiones que contribuir&iacute;an a fortalecer la cadena de suministro de la industria del calzado en nuestro pa&iacute;s.</p>

<p>&quot;En la medida en la que nuevos suplidores de componentes se establezcan en el pa&iacute;s, nuestras empresas manufactureras ser&aacute;n m&aacute;s competitivas en t&eacute;rminos de costos, eficiencia y rapidez en el ciclo productivo&quot;, dijo la Directora Ejecutiva del CNZFE.</p>

<p>Tambi&eacute;n participaron Dave Sharp, presidente y CEO de Rocky Brands; el Se&ntilde;or Goby Moya, Gerente General de la empresa en la Rep&uacute;blica Dominicana, as&iacute; como otros altos ejecutivos.</p>

<p>Rocky Brands se dedica al dise&ntilde;o, desarrollo y manufactura de calzados de alta calidad para el mercado mundial.</p>

<p>Los productos de la Corporaci&oacute;n son comercializados bajo las marcas propias: ROCKY, GEORGIA BOOT, DURANGO, LEHIGH, y las marcas bajo licencia de MICHELIN y MOSSY OAK. La empresa distribuye productos son distribuidos a trav&eacute;s de tres segmentos de negocios: comercio mayorista, cadenas de tiendas minoristas y compras para uso militar.&nbsp;&nbsp;</p>

<p><img alt="DSC_5003---" src="http://mic.gob.do/media/964294/dsc_5003---_456x303.jpg" style="height:303px; width:456px" /></p>
', 1076, N'/Files/find/1067?filename=yasdexu2aznfvj84eqng-dsc_5039---.jpg', NULL, CAST(N'2016-05-05 10:47:44.830' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[articulos_contenido] ([id], [id_title], [titulo], [subtitulo], [contenido], [parent_id], [image_presentation_1], [image_presentation_2], [fecha], [fecha_publicacion], [tags], [avalible_edit], [avalible_childrens]) VALUES (1134, N'Comercio-Exterior', N'Comercio Exterior', NULL, NULL, 62, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[articulos_contenido] ([id], [id_title], [titulo], [subtitulo], [contenido], [parent_id], [image_presentation_1], [image_presentation_2], [fecha], [fecha_publicacion], [tags], [avalible_edit], [avalible_childrens]) VALUES (1135, N'Alex', N'Alex', N'bcvbcvb', N'<p>cvbc</p>
', 1134, NULL, NULL, CAST(N'2016-05-05 11:41:17.457' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[articulos_contenido] ([id], [id_title], [titulo], [subtitulo], [contenido], [parent_id], [image_presentation_1], [image_presentation_2], [fecha], [fecha_publicacion], [tags], [avalible_edit], [avalible_childrens]) VALUES (1136, N'Comercio-Interno', N'Comercio Interno', NULL, NULL, 62, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[articulos_contenido] ([id], [id_title], [titulo], [subtitulo], [contenido], [parent_id], [image_presentation_1], [image_presentation_2], [fecha], [fecha_publicacion], [tags], [avalible_edit], [avalible_childrens]) VALUES (1137, N'Analisis-Economico', N'Análisis Económico', NULL, NULL, 62, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[articulos_contenido] ([id], [id_title], [titulo], [subtitulo], [contenido], [parent_id], [image_presentation_1], [image_presentation_2], [fecha], [fecha_publicacion], [tags], [avalible_edit], [avalible_childrens]) VALUES (1138, N'Combustibles-no-Convencionales', N'Combustibles no Convencionales', N'Combustibles no Convencionales', N'<p>DSFSDFSD</p>
', 62, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[articulos_contenido] ([id], [id_title], [titulo], [subtitulo], [contenido], [parent_id], [image_presentation_1], [image_presentation_2], [fecha], [fecha_publicacion], [tags], [avalible_edit], [avalible_childrens]) VALUES (1139, N'Gasolina', N'Gasolina', NULL, NULL, 1138, NULL, NULL, CAST(N'2016-05-05 11:56:40.043' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[articulos_contenido] ([id], [id_title], [titulo], [subtitulo], [contenido], [parent_id], [image_presentation_1], [image_presentation_2], [fecha], [fecha_publicacion], [tags], [avalible_edit], [avalible_childrens]) VALUES (1140, N'asdasda', N'asdasda', NULL, NULL, 1101, NULL, NULL, CAST(N'2016-05-05 13:05:19.607' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[articulos_contenido] ([id], [id_title], [titulo], [subtitulo], [contenido], [parent_id], [image_presentation_1], [image_presentation_2], [fecha], [fecha_publicacion], [tags], [avalible_edit], [avalible_childrens]) VALUES (1141, N'Zonas', N'Zonas', NULL, NULL, 1105, NULL, NULL, CAST(N'2016-05-05 13:20:13.790' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[articulos_contenido] ([id], [id_title], [titulo], [subtitulo], [contenido], [parent_id], [image_presentation_1], [image_presentation_2], [fecha], [fecha_publicacion], [tags], [avalible_edit], [avalible_childrens]) VALUES (1142, N'Desarrollo-Industrial', N'Desarrollo Industrial', NULL, NULL, 1103, N'/Files/find/1103?filename=rcdvqwkj99taqt8afzqt-product-12.jpg', NULL, CAST(N'2016-05-05 14:22:40.140' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[articulos_contenido] ([id], [id_title], [titulo], [subtitulo], [contenido], [parent_id], [image_presentation_1], [image_presentation_2], [fecha], [fecha_publicacion], [tags], [avalible_edit], [avalible_childrens]) VALUES (1146, N'sdfsDfsd', N'sdfsDfsdf', N'sdfsdfs', N'<p>sdfsdf</p>
', NULL, NULL, NULL, NULL, NULL, N'sdfs,sdf', 1, 1)
INSERT [dbo].[articulos_contenido] ([id], [id_title], [titulo], [subtitulo], [contenido], [parent_id], [image_presentation_1], [image_presentation_2], [fecha], [fecha_publicacion], [tags], [avalible_edit], [avalible_childrens]) VALUES (1147, N'sadaSd', N'sadaSd', NULL, NULL, 59, NULL, NULL, NULL, NULL, N'sadas,sadsadas', NULL, NULL)
INSERT [dbo].[articulos_contenido] ([id], [id_title], [titulo], [subtitulo], [contenido], [parent_id], [image_presentation_1], [image_presentation_2], [fecha], [fecha_publicacion], [tags], [avalible_edit], [avalible_childrens]) VALUES (1154, N'Jornada-Contra-el-Zika', N'Jornada Contra el Zika', N'Jornada Contra el Zika', N'<p>El triunfo es seguro gracias a Jose del Castillo&nbsp;El triunfo es seguro gracias a Jose del Castillo&nbsp;El triunfo es seguro gracias a Jose del Castillo&nbsp;El triunfo es seguro gracias a Jose del Castillo<img alt="" src="/Files/find/1067?filename=fjbmy5r2b2qmtealf9a7-dsc_4865---%5B1%5D.jpg" style="height:425px; width:640px" /></p>
', 1076, N'/Files/find/1067?filename=qb8f6ys2mh5pfxnzxqfu-_dsc8123---%5B1%5D.jpg', NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[articulos_contenido] OFF
SET IDENTITY_INSERT [dbo].[articulos_contenido_media] ON 

INSERT [dbo].[articulos_contenido_media] ([id], [media_id], [articulos_contenido_id]) VALUES (146, 2060, 1097)
INSERT [dbo].[articulos_contenido_media] ([id], [media_id], [articulos_contenido_id]) VALUES (147, 2083, 1135)
INSERT [dbo].[articulos_contenido_media] ([id], [media_id], [articulos_contenido_id]) VALUES (151, 2095, 1139)
INSERT [dbo].[articulos_contenido_media] ([id], [media_id], [articulos_contenido_id]) VALUES (153, 2061, 1131)
INSERT [dbo].[articulos_contenido_media] ([id], [media_id], [articulos_contenido_id]) VALUES (155, 2097, 1146)
SET IDENTITY_INSERT [dbo].[articulos_contenido_media] OFF
INSERT [dbo].[AspNetRoles] ([Id], [Name], [Description], [Discriminator]) VALUES (N'00ddaa4c-90df-4a98-bbf6-87e61d56caf0', N'AnalisisEconomico', N'Analisis-Economico', N'ApplicationRole')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [Description], [Discriminator]) VALUES (N'0857067d-dd23-46a4-9a37-136bd4bfc9d8', N'CanEdit', N'Edit existing records', N'ApplicationRole')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [Description], [Discriminator]) VALUES (N'16f21cb8-2ece-4dfb-a25c-60eb68c53294', N'VFomentoalaPYMES', NULL, N'ApplicationRole')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [Description], [Discriminator]) VALUES (N'275b493b-aafb-4e1b-a156-1ef6f578c5e8', N'Viceministerios', NULL, N'ApplicationRole')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [Description], [Discriminator]) VALUES (N'2a7bcf64-8e1b-47d2-834f-2437b8c938bb', N'VDesarrolloIndustrial', NULL, N'ApplicationRole')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [Description], [Discriminator]) VALUES (N'2fc09fe3-8eef-4335-b4d9-31130572308b', N'VComercioExterior', NULL, N'ApplicationRole')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [Description], [Discriminator]) VALUES (N'3bda2c6b-2af6-45ee-a012-4bbca4964704', N'slideshow', N'slideshow', N'ApplicationRole')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [Description], [Discriminator]) VALUES (N'406a1f9b-f7da-4c60-b279-675df3bc8a1c', N'ComercioInterno', N' Comercio-Interno', N'ApplicationRole')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [Description], [Discriminator]) VALUES (N'424207a4-a452-4a12-912b-8f54e0b450d8', N'Direcciones', N'Direcciones', N'ApplicationRole')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [Description], [Discriminator]) VALUES (N'50bebefc-6245-46ce-8f65-085cbce19144', N'CombustiblesnoConvencionales', N'Combustibles-no-Convencionales', N'ApplicationRole')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [Description], [Discriminator]) VALUES (N'523f933d-b124-4487-9ce4-df4ebf89250c', N'Comunicaciones', N'Comunicaciones', N'ApplicationRole')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [Description], [Discriminator]) VALUES (N'561a8914-8945-4ac7-a78d-cd6e072a4607', N'Hidrocarburos', NULL, N'ApplicationRole')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [Description], [Discriminator]) VALUES (N'5d8dfd31-4f29-4805-86ad-f6b738c1d892', N'inicio', N'inicio', N'ApplicationRole')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [Description], [Discriminator]) VALUES (N'611bc46d-53bb-4dc2-b9e3-833f7ff900b1', N'VComercioInterno', NULL, N'ApplicationRole')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [Description], [Discriminator]) VALUES (N'66a572a0-ccd7-4758-a912-08c8bc82ecef', N'precio_combustible', NULL, N'ApplicationRole')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [Description], [Discriminator]) VALUES (N'88c97ef0-adc3-40c4-b652-331e5db17bab', N'VZonasFrancas', NULL, N'ApplicationRole')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [Description], [Discriminator]) VALUES (N'9177938e-fb2d-4690-bbb7-ad4e5289990f', N'Admin', N'Global Access', N'ApplicationRole')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [Description], [Discriminator]) VALUES (N'b7a20f81-31b4-4c60-81a0-5812ee18a4ef', N'comercio', N'Comercio-Exterior', N'ApplicationRole')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [Description], [Discriminator]) VALUES (N'b81b68a9-9d14-4853-aff2-031d9e02ea69', N'transparencia', N'transparencia', N'ApplicationRole')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [Description], [Discriminator]) VALUES (N'bf2b225c-971c-424e-abfe-2c7dd62014c5', N'banners', N'banners', N'ApplicationRole')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [Description], [Discriminator]) VALUES (N'c02f0892-cc02-4a64-b126-c49d407c2f8a', N'aplication', N'Role Aplication Admin', N'ApplicationRole')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [Description], [Discriminator]) VALUES (N'c5f66eff-81e5-401a-8d8d-43af4056f46f', N'ComunicacionesDelete', N'ComunicacionesDelete', N'ApplicationRole')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [Description], [Discriminator]) VALUES (N'e9dd1b6d-7eba-49ae-9ed0-302649b5c953', N'ComercioExterior', NULL, N'ApplicationRole')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [Description], [Discriminator]) VALUES (N'f773ccb9-e7b8-49de-a764-b2905b5b23b1', N'HidrocarburosDelete', N'HidrocarburosDelete', N'ApplicationRole')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [Description], [Discriminator]) VALUES (N'fc1d1ba1-e01c-4eef-b820-48dfdc5c3cca', N'User', N'Restricted to business domain activity', N'ApplicationRole')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'058a9f60-1a4f-46b3-8ae2-10dd2efae8a2', N'424207a4-a452-4a12-912b-8f54e0b450d8')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'43568525-4231-4cec-aeee-73de61aa6d92', N'00ddaa4c-90df-4a98-bbf6-87e61d56caf0')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'43568525-4231-4cec-aeee-73de61aa6d92', N'0857067d-dd23-46a4-9a37-136bd4bfc9d8')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'43568525-4231-4cec-aeee-73de61aa6d92', N'16f21cb8-2ece-4dfb-a25c-60eb68c53294')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'43568525-4231-4cec-aeee-73de61aa6d92', N'275b493b-aafb-4e1b-a156-1ef6f578c5e8')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'43568525-4231-4cec-aeee-73de61aa6d92', N'2a7bcf64-8e1b-47d2-834f-2437b8c938bb')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'43568525-4231-4cec-aeee-73de61aa6d92', N'2fc09fe3-8eef-4335-b4d9-31130572308b')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'43568525-4231-4cec-aeee-73de61aa6d92', N'3bda2c6b-2af6-45ee-a012-4bbca4964704')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'43568525-4231-4cec-aeee-73de61aa6d92', N'406a1f9b-f7da-4c60-b279-675df3bc8a1c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'43568525-4231-4cec-aeee-73de61aa6d92', N'424207a4-a452-4a12-912b-8f54e0b450d8')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'43568525-4231-4cec-aeee-73de61aa6d92', N'50bebefc-6245-46ce-8f65-085cbce19144')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'43568525-4231-4cec-aeee-73de61aa6d92', N'523f933d-b124-4487-9ce4-df4ebf89250c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'43568525-4231-4cec-aeee-73de61aa6d92', N'561a8914-8945-4ac7-a78d-cd6e072a4607')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'43568525-4231-4cec-aeee-73de61aa6d92', N'5d8dfd31-4f29-4805-86ad-f6b738c1d892')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'43568525-4231-4cec-aeee-73de61aa6d92', N'611bc46d-53bb-4dc2-b9e3-833f7ff900b1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'43568525-4231-4cec-aeee-73de61aa6d92', N'66a572a0-ccd7-4758-a912-08c8bc82ecef')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'43568525-4231-4cec-aeee-73de61aa6d92', N'88c97ef0-adc3-40c4-b652-331e5db17bab')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'43568525-4231-4cec-aeee-73de61aa6d92', N'9177938e-fb2d-4690-bbb7-ad4e5289990f')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'43568525-4231-4cec-aeee-73de61aa6d92', N'b7a20f81-31b4-4c60-81a0-5812ee18a4ef')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'43568525-4231-4cec-aeee-73de61aa6d92', N'b81b68a9-9d14-4853-aff2-031d9e02ea69')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'43568525-4231-4cec-aeee-73de61aa6d92', N'bf2b225c-971c-424e-abfe-2c7dd62014c5')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'43568525-4231-4cec-aeee-73de61aa6d92', N'c02f0892-cc02-4a64-b126-c49d407c2f8a')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'43568525-4231-4cec-aeee-73de61aa6d92', N'c5f66eff-81e5-401a-8d8d-43af4056f46f')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'43568525-4231-4cec-aeee-73de61aa6d92', N'e9dd1b6d-7eba-49ae-9ed0-302649b5c953')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'43568525-4231-4cec-aeee-73de61aa6d92', N'f773ccb9-e7b8-49de-a764-b2905b5b23b1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'43568525-4231-4cec-aeee-73de61aa6d92', N'fc1d1ba1-e01c-4eef-b820-48dfdc5c3cca')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6f6e1201-f42d-4f82-bca3-5a8bb9343ffb', N'00ddaa4c-90df-4a98-bbf6-87e61d56caf0')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6f6e1201-f42d-4f82-bca3-5a8bb9343ffb', N'16f21cb8-2ece-4dfb-a25c-60eb68c53294')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6f6e1201-f42d-4f82-bca3-5a8bb9343ffb', N'275b493b-aafb-4e1b-a156-1ef6f578c5e8')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6f6e1201-f42d-4f82-bca3-5a8bb9343ffb', N'2a7bcf64-8e1b-47d2-834f-2437b8c938bb')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6f6e1201-f42d-4f82-bca3-5a8bb9343ffb', N'2fc09fe3-8eef-4335-b4d9-31130572308b')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6f6e1201-f42d-4f82-bca3-5a8bb9343ffb', N'3bda2c6b-2af6-45ee-a012-4bbca4964704')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6f6e1201-f42d-4f82-bca3-5a8bb9343ffb', N'406a1f9b-f7da-4c60-b279-675df3bc8a1c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6f6e1201-f42d-4f82-bca3-5a8bb9343ffb', N'424207a4-a452-4a12-912b-8f54e0b450d8')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6f6e1201-f42d-4f82-bca3-5a8bb9343ffb', N'50bebefc-6245-46ce-8f65-085cbce19144')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6f6e1201-f42d-4f82-bca3-5a8bb9343ffb', N'523f933d-b124-4487-9ce4-df4ebf89250c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6f6e1201-f42d-4f82-bca3-5a8bb9343ffb', N'561a8914-8945-4ac7-a78d-cd6e072a4607')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6f6e1201-f42d-4f82-bca3-5a8bb9343ffb', N'5d8dfd31-4f29-4805-86ad-f6b738c1d892')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6f6e1201-f42d-4f82-bca3-5a8bb9343ffb', N'611bc46d-53bb-4dc2-b9e3-833f7ff900b1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6f6e1201-f42d-4f82-bca3-5a8bb9343ffb', N'66a572a0-ccd7-4758-a912-08c8bc82ecef')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6f6e1201-f42d-4f82-bca3-5a8bb9343ffb', N'88c97ef0-adc3-40c4-b652-331e5db17bab')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6f6e1201-f42d-4f82-bca3-5a8bb9343ffb', N'b7a20f81-31b4-4c60-81a0-5812ee18a4ef')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6f6e1201-f42d-4f82-bca3-5a8bb9343ffb', N'b81b68a9-9d14-4853-aff2-031d9e02ea69')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6f6e1201-f42d-4f82-bca3-5a8bb9343ffb', N'bf2b225c-971c-424e-abfe-2c7dd62014c5')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6f6e1201-f42d-4f82-bca3-5a8bb9343ffb', N'c5f66eff-81e5-401a-8d8d-43af4056f46f')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6f6e1201-f42d-4f82-bca3-5a8bb9343ffb', N'e9dd1b6d-7eba-49ae-9ed0-302649b5c953')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6f6e1201-f42d-4f82-bca3-5a8bb9343ffb', N'f773ccb9-e7b8-49de-a764-b2905b5b23b1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'735d9977-d65c-4881-8b70-9fb7c3f6c0f6', N'00ddaa4c-90df-4a98-bbf6-87e61d56caf0')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'735d9977-d65c-4881-8b70-9fb7c3f6c0f6', N'16f21cb8-2ece-4dfb-a25c-60eb68c53294')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'735d9977-d65c-4881-8b70-9fb7c3f6c0f6', N'275b493b-aafb-4e1b-a156-1ef6f578c5e8')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'735d9977-d65c-4881-8b70-9fb7c3f6c0f6', N'2a7bcf64-8e1b-47d2-834f-2437b8c938bb')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'735d9977-d65c-4881-8b70-9fb7c3f6c0f6', N'2fc09fe3-8eef-4335-b4d9-31130572308b')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'735d9977-d65c-4881-8b70-9fb7c3f6c0f6', N'3bda2c6b-2af6-45ee-a012-4bbca4964704')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'735d9977-d65c-4881-8b70-9fb7c3f6c0f6', N'406a1f9b-f7da-4c60-b279-675df3bc8a1c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'735d9977-d65c-4881-8b70-9fb7c3f6c0f6', N'424207a4-a452-4a12-912b-8f54e0b450d8')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'735d9977-d65c-4881-8b70-9fb7c3f6c0f6', N'50bebefc-6245-46ce-8f65-085cbce19144')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'735d9977-d65c-4881-8b70-9fb7c3f6c0f6', N'523f933d-b124-4487-9ce4-df4ebf89250c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'735d9977-d65c-4881-8b70-9fb7c3f6c0f6', N'561a8914-8945-4ac7-a78d-cd6e072a4607')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'735d9977-d65c-4881-8b70-9fb7c3f6c0f6', N'5d8dfd31-4f29-4805-86ad-f6b738c1d892')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'735d9977-d65c-4881-8b70-9fb7c3f6c0f6', N'611bc46d-53bb-4dc2-b9e3-833f7ff900b1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'735d9977-d65c-4881-8b70-9fb7c3f6c0f6', N'66a572a0-ccd7-4758-a912-08c8bc82ecef')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'735d9977-d65c-4881-8b70-9fb7c3f6c0f6', N'88c97ef0-adc3-40c4-b652-331e5db17bab')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'735d9977-d65c-4881-8b70-9fb7c3f6c0f6', N'b7a20f81-31b4-4c60-81a0-5812ee18a4ef')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'735d9977-d65c-4881-8b70-9fb7c3f6c0f6', N'b81b68a9-9d14-4853-aff2-031d9e02ea69')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'735d9977-d65c-4881-8b70-9fb7c3f6c0f6', N'bf2b225c-971c-424e-abfe-2c7dd62014c5')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'735d9977-d65c-4881-8b70-9fb7c3f6c0f6', N'c5f66eff-81e5-401a-8d8d-43af4056f46f')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'735d9977-d65c-4881-8b70-9fb7c3f6c0f6', N'e9dd1b6d-7eba-49ae-9ed0-302649b5c953')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'735d9977-d65c-4881-8b70-9fb7c3f6c0f6', N'f773ccb9-e7b8-49de-a764-b2905b5b23b1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c6ca2d20-2e06-4d22-8934-2164ea5ccd50', N'00ddaa4c-90df-4a98-bbf6-87e61d56caf0')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c6ca2d20-2e06-4d22-8934-2164ea5ccd50', N'0857067d-dd23-46a4-9a37-136bd4bfc9d8')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c6ca2d20-2e06-4d22-8934-2164ea5ccd50', N'16f21cb8-2ece-4dfb-a25c-60eb68c53294')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c6ca2d20-2e06-4d22-8934-2164ea5ccd50', N'275b493b-aafb-4e1b-a156-1ef6f578c5e8')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c6ca2d20-2e06-4d22-8934-2164ea5ccd50', N'2a7bcf64-8e1b-47d2-834f-2437b8c938bb')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c6ca2d20-2e06-4d22-8934-2164ea5ccd50', N'2fc09fe3-8eef-4335-b4d9-31130572308b')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c6ca2d20-2e06-4d22-8934-2164ea5ccd50', N'3bda2c6b-2af6-45ee-a012-4bbca4964704')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c6ca2d20-2e06-4d22-8934-2164ea5ccd50', N'406a1f9b-f7da-4c60-b279-675df3bc8a1c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c6ca2d20-2e06-4d22-8934-2164ea5ccd50', N'424207a4-a452-4a12-912b-8f54e0b450d8')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c6ca2d20-2e06-4d22-8934-2164ea5ccd50', N'50bebefc-6245-46ce-8f65-085cbce19144')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c6ca2d20-2e06-4d22-8934-2164ea5ccd50', N'523f933d-b124-4487-9ce4-df4ebf89250c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c6ca2d20-2e06-4d22-8934-2164ea5ccd50', N'561a8914-8945-4ac7-a78d-cd6e072a4607')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c6ca2d20-2e06-4d22-8934-2164ea5ccd50', N'5d8dfd31-4f29-4805-86ad-f6b738c1d892')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c6ca2d20-2e06-4d22-8934-2164ea5ccd50', N'611bc46d-53bb-4dc2-b9e3-833f7ff900b1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c6ca2d20-2e06-4d22-8934-2164ea5ccd50', N'66a572a0-ccd7-4758-a912-08c8bc82ecef')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c6ca2d20-2e06-4d22-8934-2164ea5ccd50', N'88c97ef0-adc3-40c4-b652-331e5db17bab')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c6ca2d20-2e06-4d22-8934-2164ea5ccd50', N'9177938e-fb2d-4690-bbb7-ad4e5289990f')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c6ca2d20-2e06-4d22-8934-2164ea5ccd50', N'b7a20f81-31b4-4c60-81a0-5812ee18a4ef')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c6ca2d20-2e06-4d22-8934-2164ea5ccd50', N'b81b68a9-9d14-4853-aff2-031d9e02ea69')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c6ca2d20-2e06-4d22-8934-2164ea5ccd50', N'bf2b225c-971c-424e-abfe-2c7dd62014c5')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c6ca2d20-2e06-4d22-8934-2164ea5ccd50', N'c02f0892-cc02-4a64-b126-c49d407c2f8a')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c6ca2d20-2e06-4d22-8934-2164ea5ccd50', N'c5f66eff-81e5-401a-8d8d-43af4056f46f')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c6ca2d20-2e06-4d22-8934-2164ea5ccd50', N'e9dd1b6d-7eba-49ae-9ed0-302649b5c953')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c6ca2d20-2e06-4d22-8934-2164ea5ccd50', N'f773ccb9-e7b8-49de-a764-b2905b5b23b1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c6ca2d20-2e06-4d22-8934-2164ea5ccd50', N'fc1d1ba1-e01c-4eef-b820-48dfdc5c3cca')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e2533b93-bf4c-483e-a20c-c53aa186a99c', N'3bda2c6b-2af6-45ee-a012-4bbca4964704')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e2533b93-bf4c-483e-a20c-c53aa186a99c', N'5d8dfd31-4f29-4805-86ad-f6b738c1d892')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e2533b93-bf4c-483e-a20c-c53aa186a99c', N'bf2b225c-971c-424e-abfe-2c7dd62014c5')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [PasswordHash], [SecurityStamp], [FirstName], [LastName], [Email], [Discriminator]) VALUES (N'058a9f60-1a4f-46b3-8ae2-10dd2efae8a2', N'aferreras', N'AC4BRajObQj1MGijrORKl3WzyNpj5VhvBTTW4QgG4tc87F68vvasF2DlnbhpD3i2tw==', N'9a0e7748-ef49-4db0-91b6-72891dd49fa1', N'Alexander2', N'Alexnader2', N'asdasd@asdsd.com', N'ApplicationUser')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [PasswordHash], [SecurityStamp], [FirstName], [LastName], [Email], [Discriminator]) VALUES (N'43568525-4231-4cec-aeee-73de61aa6d92', N'admin', N'APbMIkSflBUQTkhi9qv3UyG5+AGbSdzT4sWdkB1cD74JEadBJUli2dGq7x/bFz3suQ==', N'26c8ae33-64e4-42fa-a99f-39e867964cd3', N'Administrador', N'Admin', N'ferrerasalexander@gmail.com', N'ApplicationUser')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [PasswordHash], [SecurityStamp], [FirstName], [LastName], [Email], [Discriminator]) VALUES (N'6f6e1201-f42d-4f82-bca3-5a8bb9343ffb', N'alexander', N'AJ2U6qH6ARxrVe9MSli0a3iM56NsY6CKNmg2LFq+wJyZYUkMzFTRN6jTbfErxRVzLQ==', N'd8735d62-4b39-46c9-9c71-e9115922bca5', N'Corbett', N'Alexander', N'alexander.corbett@mic.gob.do', N'ApplicationUser')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [PasswordHash], [SecurityStamp], [FirstName], [LastName], [Email], [Discriminator]) VALUES (N'735d9977-d65c-4881-8b70-9fb7c3f6c0f6', N'jose', N'AMP1Y2ktUgtz1VYMQWpa456g+p9bT+ARt5fo4CNbbegy9EOi9tw6DacMCe9iYsZdDg==', N'b758831e-e055-46d0-a64a-1e5340bdfcc9', N'Cid', N'Jose', N'Jose.Cid@mic.gob.do', N'ApplicationUser')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [PasswordHash], [SecurityStamp], [FirstName], [LastName], [Email], [Discriminator]) VALUES (N'c6ca2d20-2e06-4d22-8934-2164ea5ccd50', N'demo', N'AGmHcyXxWjyuUTnKtmrYxEeO+ej6BJqMfa2QAUKglko6s7wUzJ6yrn7j+eJ5I7hEeg==', N'f18cc422-02d8-42cf-8d60-949a85353812', N'demo', N'demo', N'ferrerasalexander@gmail.com', N'ApplicationUser')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [PasswordHash], [SecurityStamp], [FirstName], [LastName], [Email], [Discriminator]) VALUES (N'e2533b93-bf4c-483e-a20c-c53aa186a99c', N'omar', N'AGUAfjyEUX8Uwc8v0SkPiMNby8ZI0GQoWRFyQzWjK7YP91FiZOU8ju1ez5OeaOPoWQ==', N'157b0a61-bd75-4a39-a754-01e589a25998', N'Encarnacion', N'Omar', N'omar.encarnacion@mic.gob.do', N'ApplicationUser')
SET IDENTITY_INSERT [dbo].[banners] ON 

INSERT [dbo].[banners] ([id], [url], [image_url], [active]) VALUES (7, NULL, N'/Files/FindImages?folname=media_banners&filename=lpft69kjjzyntqzakbqq-gallery-1.jpg', 1)
INSERT [dbo].[banners] ([id], [url], [image_url], [active]) VALUES (8, NULL, N'/Files/FindImages?folname=media_banners&filename=va44m7a2hkdy223gxpfu-gallery-2.jpg', 1)
INSERT [dbo].[banners] ([id], [url], [image_url], [active]) VALUES (9, NULL, N'/Files/FindImages?folname=media_banners&filename=q3xs39d27yyr3xzfreyb-gallery-3.jpg', 1)
INSERT [dbo].[banners] ([id], [url], [image_url], [active]) VALUES (10, NULL, N'/Files/FindImages?folname=media_banners&filename=lyry2uajnnhp8eyyt2vj-gallery-4.jpg', 1)
INSERT [dbo].[banners] ([id], [url], [image_url], [active]) VALUES (11, NULL, N'/Files/FindImages?folname=media_banners&filename=xvv8lgw27vdn5e5pbrns-gallery-4%402x.jpg', 1)
INSERT [dbo].[banners] ([id], [url], [image_url], [active]) VALUES (12, NULL, N'/Files/FindImages?folname=media_banners&filename=9dtwpmq2cb8ftmf32nta-gallery-5.jpg', 1)
SET IDENTITY_INSERT [dbo].[banners] OFF
SET IDENTITY_INSERT [dbo].[cambio_combustible] ON 

INSERT [dbo].[cambio_combustible] ([id], [user_id], [fecha], [titulo], [tasa_cambio], [file_combustible], [file_gas_natural]) VALUES (1027, N'43568525-4231-4cec-aeee-73de61aa6d92', CAST(N'2016-05-12 10:24:39.310' AS DateTime), N'7 al 13 de Mayo del 2016', N'78.55', NULL, NULL)
SET IDENTITY_INSERT [dbo].[cambio_combustible] OFF
SET IDENTITY_INSERT [dbo].[cambio_combustible_precio] ON 

INSERT [dbo].[cambio_combustible_precio] ([id], [id_cambio_combustible], [id_combustible], [precio]) VALUES (1165, 1027, N'avtur', N'90.80')
INSERT [dbo].[cambio_combustible_precio] ([id], [id_cambio_combustible], [id_combustible], [precio]) VALUES (1166, 1027, N'fol  ', N'68.83')
INSERT [dbo].[cambio_combustible_precio] ([id], [id_cambio_combustible], [id_combustible], [precio]) VALUES (1167, 1027, N'glp  ', N'88.60')
INSERT [dbo].[cambio_combustible_precio] ([id], [id_cambio_combustible], [id_combustible], [precio]) VALUES (1168, 1027, N'gnv  ', N'23.22')
INSERT [dbo].[cambio_combustible_precio] ([id], [id_cambio_combustible], [id_combustible], [precio]) VALUES (1169, 1027, N'gslp ', N'192.00')
INSERT [dbo].[cambio_combustible_precio] ([id], [id_cambio_combustible], [id_combustible], [precio]) VALUES (1170, 1027, N'gslr ', N'172.70')
INSERT [dbo].[cambio_combustible_precio] ([id], [id_cambio_combustible], [id_combustible], [precio]) VALUES (1171, 1027, N'gso  ', N'146.30')
INSERT [dbo].[cambio_combustible_precio] ([id], [id_cambio_combustible], [id_combustible], [precio]) VALUES (1172, 1027, N'gsr  ', N'131.00')
INSERT [dbo].[cambio_combustible_precio] ([id], [id_cambio_combustible], [id_combustible], [precio]) VALUES (1173, 1027, N'krs  ', N'113.90')
SET IDENTITY_INSERT [dbo].[cambio_combustible_precio] OFF
INSERT [dbo].[combustible] ([id], [nombre], [descripcion], [activo], [position]) VALUES (N'avtur', N'Avtur', NULL, 1, 6)
INSERT [dbo].[combustible] ([id], [nombre], [descripcion], [activo], [position]) VALUES (N'fol  ', N'Fuel Oil', N'Fuel Oil', 1, 7)
INSERT [dbo].[combustible] ([id], [nombre], [descripcion], [activo], [position]) VALUES (N'glp  ', N'Gas Licuado de Petróleo (GLP)', NULL, 1, 8)
INSERT [dbo].[combustible] ([id], [nombre], [descripcion], [activo], [position]) VALUES (N'gnv  ', N'Gas Natural Vehicular (GNV)', NULL, 1, 9)
INSERT [dbo].[combustible] ([id], [nombre], [descripcion], [activo], [position]) VALUES (N'gslp ', N'Gasolina Premium', NULL, 1, 1)
INSERT [dbo].[combustible] ([id], [nombre], [descripcion], [activo], [position]) VALUES (N'gslr ', N'Gasolina Regular', NULL, 1, 2)
INSERT [dbo].[combustible] ([id], [nombre], [descripcion], [activo], [position]) VALUES (N'gso  ', N'Gasoil Optimo', NULL, 1, 3)
INSERT [dbo].[combustible] ([id], [nombre], [descripcion], [activo], [position]) VALUES (N'gsr  ', N'Gasoil Regular', NULL, 1, 4)
INSERT [dbo].[combustible] ([id], [nombre], [descripcion], [activo], [position]) VALUES (N'krs  ', N'Kerosene', NULL, 1, 5)
SET IDENTITY_INSERT [dbo].[media] ON 

INSERT [dbo].[media] ([id], [name], [url], [type], [size], [thumb], [isServer], [articulo_contenido_id], [delete_url], [type_name]) VALUES (2060, N'combustible3---[1].jpg', N'/Files/find/1067?filename=kd6yr5u2pzwyd5k73gnb-combustible3---%5B1%5D.jpg', N'image/jpeg', 245552, N'/Files/find/1067?filename=kd6yr5u2pzwyd5k73gnb-combustible3---%5B1%5D.jpg', 1, 1067, N'/Files/Delete/1067?filename=combustible3---%5B1%5D.jpg', N'image')
INSERT [dbo].[media] ([id], [name], [url], [type], [size], [thumb], [isServer], [articulo_contenido_id], [delete_url], [type_name]) VALUES (2061, N'_dsc8123---[1].jpg', N'/Files/find/1067?filename=qb8f6ys2mh5pfxnzxqfu-_dsc8123---%5B1%5D.jpg', N'image/jpeg', 210374, N'/Files/find/1067?filename=qb8f6ys2mh5pfxnzxqfu-_dsc8123---%5B1%5D.jpg', 1, 1067, N'/Files/Delete/1067?filename=_dsc8123---%5B1%5D.jpg', N'image')
INSERT [dbo].[media] ([id], [name], [url], [type], [size], [thumb], [isServer], [articulo_contenido_id], [delete_url], [type_name]) VALUES (2062, N'_dsc8170---_500x334[1].jpg', N'/Files/find/1067?filename=hs4rydq29hn3zgdq5257-_dsc8170---_500x334%5B1%5D.jpg', N'image/jpeg', 49950, N'/Files/find/1067?filename=hs4rydq29hn3zgdq5257-_dsc8170---_500x334%5B1%5D.jpg', 1, 1067, N'/Files/Delete/1067?filename=_dsc8170---_500x334%5B1%5D.jpg', N'image')
INSERT [dbo].[media] ([id], [name], [url], [type], [size], [thumb], [isServer], [articulo_contenido_id], [delete_url], [type_name]) VALUES (2063, N'combustibles---[1].jpg', N'/Files/find/1067?filename=p8w8cqn2vrfq7ch4vxga-combustibles---%5B1%5D.jpg', N'image/jpeg', 29805, N'/Files/find/1067?filename=p8w8cqn2vrfq7ch4vxga-combustibles---%5B1%5D.jpg', 1, 1067, N'/Files/Delete/1067?filename=combustibles---%5B1%5D.jpg', N'image')
INSERT [dbo].[media] ([id], [name], [url], [type], [size], [thumb], [isServer], [articulo_contenido_id], [delete_url], [type_name]) VALUES (2064, N'dsc_4865---[1].jpg', N'/Files/find/1067?filename=fjbmy5r2b2qmtealf9a7-dsc_4865---%5B1%5D.jpg', N'image/jpeg', 268177, N'/Files/find/1067?filename=fjbmy5r2b2qmtealf9a7-dsc_4865---%5B1%5D.jpg', 1, 1067, N'/Files/Delete/1067?filename=dsc_4865---%5B1%5D.jpg', N'image')
INSERT [dbo].[media] ([id], [name], [url], [type], [size], [thumb], [isServer], [articulo_contenido_id], [delete_url], [type_name]) VALUES (2065, N'pastedimage---_500x333[1].jpg', N'/Files/find/1067?filename=yudlnv82m5utdyjmq5me-pastedimage---_500x333%5B1%5D.jpg', N'image/jpeg', 64376, N'/Files/find/1067?filename=yudlnv82m5utdyjmq5me-pastedimage---_500x333%5B1%5D.jpg', 1, 1067, N'/Files/Delete/1067?filename=pastedimage---_500x333%5B1%5D.jpg', N'image')
INSERT [dbo].[media] ([id], [name], [url], [type], [size], [thumb], [isServer], [articulo_contenido_id], [delete_url], [type_name]) VALUES (2066, N'vicoex[1].jpg', N'/Files/find/1100?filename=63yumlrj9y4rmhvbq2qs-vicoex%5B1%5D.jpg', N'image/jpeg', 395468, N'/Files/find/1100?filename=63yumlrj9y4rmhvbq2qs-vicoex%5B1%5D.jpg', 1, 1100, N'/Files/Delete/1100?filename=vicoex%5B1%5D.jpg', N'image')
INSERT [dbo].[media] ([id], [name], [url], [type], [size], [thumb], [isServer], [articulo_contenido_id], [delete_url], [type_name]) VALUES (2067, N'ya', N'http://mic.gob.do/img/interiores/vicoex-perfil.jpg', N'image', 0, N'http://mic.gob.do/img/interiores/vicoex-perfil.jpg', 0, 1100, NULL, N'image')
INSERT [dbo].[media] ([id], [name], [url], [type], [size], [thumb], [isServer], [articulo_contenido_id], [delete_url], [type_name]) VALUES (2068, N'team-c1.jpg', N'/Files/find/1100?filename=g9yl5ph2a6x2yarfaf4r-team-c1.jpg', N'image/jpeg', 74853, N'/Files/find/1100?filename=g9yl5ph2a6x2yarfaf4r-team-c1.jpg', 1, 1100, N'/Files/Delete/1100?filename=team-c1.jpg', N'image')
INSERT [dbo].[media] ([id], [name], [url], [type], [size], [thumb], [isServer], [articulo_contenido_id], [delete_url], [type_name]) VALUES (2069, N'team-c5.png', N'/Files/find/1100?filename=keln5tcjdcx7w2227yzt-team-c5.png', N'image/png', 111916, N'/Files/find/1100?filename=keln5tcjdcx7w2227yzt-team-c5.png', 1, 1100, N'/Files/Delete/1100?filename=team-c5.png', N'image')
INSERT [dbo].[media] ([id], [name], [url], [type], [size], [thumb], [isServer], [articulo_contenido_id], [delete_url], [type_name]) VALUES (2070, N'team-c2.jpg', N'/Files/find/1100?filename=8sw29dk2rqrgjr5yjpvv-team-c2.jpg', N'image/jpeg', 62304, N'/Files/find/1100?filename=8sw29dk2rqrgjr5yjpvv-team-c2.jpg', 1, 1100, N'/Files/Delete/1100?filename=team-c2.jpg', N'image')
INSERT [dbo].[media] ([id], [name], [url], [type], [size], [thumb], [isServer], [articulo_contenido_id], [delete_url], [type_name]) VALUES (2071, N'team-c4.png', N'/Files/find/1100?filename=dq3a6p7255lgbkqt2f6c-team-c4.png', N'image/png', 127473, N'/Files/find/1100?filename=dq3a6p7255lgbkqt2f6c-team-c4.png', 1, 1100, N'/Files/Delete/1100?filename=team-c4.png', N'image')
INSERT [dbo].[media] ([id], [name], [url], [type], [size], [thumb], [isServer], [articulo_contenido_id], [delete_url], [type_name]) VALUES (2072, N'team-c3.jpg', N'/Files/find/1100?filename=t763clh27rdqgqzh8g4p-team-c3.jpg', N'image/jpeg', 66262, N'/Files/find/1100?filename=t763clh27rdqgqzh8g4p-team-c3.jpg', 1, 1100, N'/Files/Delete/1100?filename=team-c3.jpg', N'image')
INSERT [dbo].[media] ([id], [name], [url], [type], [size], [thumb], [isServer], [articulo_contenido_id], [delete_url], [type_name]) VALUES (2073, N'team-c6.png', N'/Files/find/1100?filename=qa4saecj5ljy28mafcym-team-c6.png', N'image/png', 125205, N'/Files/find/1100?filename=qa4saecj5ljy28mafcym-team-c6.png', 1, 1100, N'/Files/Delete/1100?filename=team-c6.png', N'image')
INSERT [dbo].[media] ([id], [name], [url], [type], [size], [thumb], [isServer], [articulo_contenido_id], [delete_url], [type_name]) VALUES (2074, N'product-10-z.jpg', N'/Files/find/1100?filename=k6snujb26v68c52vqx9b-product-10-z.jpg', N'image/jpeg', 92890, N'/Files/find/1100?filename=k6snujb26v68c52vqx9b-product-10-z.jpg', 1, 1100, N'/Files/Delete/1100?filename=product-10-z.jpg', N'image')
INSERT [dbo].[media] ([id], [name], [url], [type], [size], [thumb], [isServer], [articulo_contenido_id], [delete_url], [type_name]) VALUES (2075, N'product-11.jpg', N'/Files/find/1100?filename=dyk8cgsj46desugvz7wm-product-11.jpg', N'image/jpeg', 65329, N'/Files/find/1100?filename=dyk8cgsj46desugvz7wm-product-11.jpg', 1, 1100, N'/Files/Delete/1100?filename=product-11.jpg', N'image')
INSERT [dbo].[media] ([id], [name], [url], [type], [size], [thumb], [isServer], [articulo_contenido_id], [delete_url], [type_name]) VALUES (2076, N'product-10.jpg', N'/Files/find/1100?filename=9jx8hjwjsn6b6pe9pcpw-product-10.jpg', N'image/jpeg', 111743, N'/Files/find/1100?filename=9jx8hjwjsn6b6pe9pcpw-product-10.jpg', 1, 1100, N'/Files/Delete/1100?filename=product-10.jpg', N'image')
INSERT [dbo].[media] ([id], [name], [url], [type], [size], [thumb], [isServer], [articulo_contenido_id], [delete_url], [type_name]) VALUES (2077, N'product-11-z.jpg', N'/Files/find/1100?filename=hupava727kc2dreskybv-product-11-z.jpg', N'image/jpeg', 121229, N'/Files/find/1100?filename=hupava727kc2dreskybv-product-11-z.jpg', 1, 1100, N'/Files/Delete/1100?filename=product-11-z.jpg', N'image')
INSERT [dbo].[media] ([id], [name], [url], [type], [size], [thumb], [isServer], [articulo_contenido_id], [delete_url], [type_name]) VALUES (2078, N'product-12.jpg', N'/Files/find/1100?filename=b3ev7tp2hnllfjyslvct-product-12.jpg', N'image/jpeg', 118857, N'/Files/find/1100?filename=b3ev7tp2hnllfjyslvct-product-12.jpg', 1, 1100, N'/Files/Delete/1100?filename=product-12.jpg', N'image')
INSERT [dbo].[media] ([id], [name], [url], [type], [size], [thumb], [isServer], [articulo_contenido_id], [delete_url], [type_name]) VALUES (2079, N'product-12-z.jpg', N'/Files/find/1100?filename=q2bu5zqjyzdd6d5564hv-product-12-z.jpg', N'image/jpeg', 103472, N'/Files/find/1100?filename=q2bu5zqjyzdd6d5564hv-product-12-z.jpg', 1, 1100, N'/Files/Delete/1100?filename=product-12-z.jpg', N'image')
INSERT [dbo].[media] ([id], [name], [url], [type], [size], [thumb], [isServer], [articulo_contenido_id], [delete_url], [type_name]) VALUES (2080, N'product-13-z.jpg', N'/Files/find/1100?filename=pxxxzpk2rnjrtz6yvfuq-product-13-z.jpg', N'image/jpeg', 95305, N'/Files/find/1100?filename=pxxxzpk2rnjrtz6yvfuq-product-13-z.jpg', 1, 1100, N'/Files/Delete/1100?filename=product-13-z.jpg', N'image')
INSERT [dbo].[media] ([id], [name], [url], [type], [size], [thumb], [isServer], [articulo_contenido_id], [delete_url], [type_name]) VALUES (2081, N'product-13.jpg', N'/Files/find/1100?filename=8c5dvz72w5eqn9th6fuw-product-13.jpg', N'image/jpeg', 125267, N'/Files/find/1100?filename=8c5dvz72w5eqn9th6fuw-product-13.jpg', 1, 1100, N'/Files/Delete/1100?filename=product-13.jpg', N'image')
INSERT [dbo].[media] ([id], [name], [url], [type], [size], [thumb], [isServer], [articulo_contenido_id], [delete_url], [type_name]) VALUES (2082, N'product-10.jpg', N'/Files/find/1101?filename=jk5fqhp2pmyj6l6sczb5-product-10.jpg', N'image/jpeg', 111743, N'/Files/find/1101?filename=jk5fqhp2pmyj6l6sczb5-product-10.jpg', 1, 1101, N'/Files/Delete/1101?filename=product-10.jpg', N'image')
INSERT [dbo].[media] ([id], [name], [url], [type], [size], [thumb], [isServer], [articulo_contenido_id], [delete_url], [type_name]) VALUES (2083, N'product-10-z.jpg', N'/Files/find/1101?filename=twx99ubjpqrady269h6y-product-10-z.jpg', N'image/jpeg', 92890, N'/Files/find/1101?filename=twx99ubjpqrady269h6y-product-10-z.jpg', 1, 1101, N'/Files/Delete/1101?filename=product-10-z.jpg', N'image')
INSERT [dbo].[media] ([id], [name], [url], [type], [size], [thumb], [isServer], [articulo_contenido_id], [delete_url], [type_name]) VALUES (2084, N'product-11.jpg', N'/Files/find/1102?filename=g2tul5s2vjws9m47shf4-product-11.jpg', N'image/jpeg', 65329, N'/Files/find/1102?filename=g2tul5s2vjws9m47shf4-product-11.jpg', 1, 1102, N'/Files/Delete/1102?filename=product-11.jpg', N'image')
INSERT [dbo].[media] ([id], [name], [url], [type], [size], [thumb], [isServer], [articulo_contenido_id], [delete_url], [type_name]) VALUES (2085, N'product-11-z.jpg', N'/Files/find/1102?filename=9kubcv22s5m95jyrhz7e-product-11-z.jpg', N'image/jpeg', 121229, N'/Files/find/1102?filename=9kubcv22s5m95jyrhz7e-product-11-z.jpg', 1, 1102, N'/Files/Delete/1102?filename=product-11-z.jpg', N'image')
INSERT [dbo].[media] ([id], [name], [url], [type], [size], [thumb], [isServer], [articulo_contenido_id], [delete_url], [type_name]) VALUES (2086, N'product-12.jpg', N'/Files/find/1103?filename=rcdvqwkj99taqt8afzqt-product-12.jpg', N'image/jpeg', 118857, N'/Files/find/1103?filename=rcdvqwkj99taqt8afzqt-product-12.jpg', 1, 1103, N'/Files/Delete/1103?filename=product-12.jpg', N'image')
INSERT [dbo].[media] ([id], [name], [url], [type], [size], [thumb], [isServer], [articulo_contenido_id], [delete_url], [type_name]) VALUES (2087, N'product-12-z.jpg', N'/Files/find/1103?filename=pfzxu2c28xfl2hbagr48-product-12-z.jpg', N'image/jpeg', 103472, N'/Files/find/1103?filename=pfzxu2c28xfl2hbagr48-product-12-z.jpg', 1, 1103, N'/Files/Delete/1103?filename=product-12-z.jpg', N'image')
INSERT [dbo].[media] ([id], [name], [url], [type], [size], [thumb], [isServer], [articulo_contenido_id], [delete_url], [type_name]) VALUES (2088, N'product-13-z.jpg', N'/Files/find/1104?filename=8l9ttcqjly2vt5vl8qhj-product-13-z.jpg', N'image/jpeg', 95305, N'/Files/find/1104?filename=8l9ttcqjly2vt5vl8qhj-product-13-z.jpg', 1, 1104, N'/Files/Delete/1104?filename=product-13-z.jpg', N'image')
INSERT [dbo].[media] ([id], [name], [url], [type], [size], [thumb], [isServer], [articulo_contenido_id], [delete_url], [type_name]) VALUES (2089, N'product-13.jpg', N'/Files/find/1104?filename=fdv5qxf27jbquzhdal7w-product-13.jpg', N'image/jpeg', 125267, N'/Files/find/1104?filename=fdv5qxf27jbquzhdal7w-product-13.jpg', 1, 1104, N'/Files/Delete/1104?filename=product-13.jpg', N'image')
INSERT [dbo].[media] ([id], [name], [url], [type], [size], [thumb], [isServer], [articulo_contenido_id], [delete_url], [type_name]) VALUES (2090, N'product-12-z.jpg', N'/Files/find/1105?filename=jan8lw627t4583syhuau-product-12-z.jpg', N'image/jpeg', 103472, N'/Files/find/1105?filename=jan8lw627t4583syhuau-product-12-z.jpg', 1, 1105, N'/Files/Delete/1105?filename=product-12-z.jpg', N'image')
INSERT [dbo].[media] ([id], [name], [url], [type], [size], [thumb], [isServer], [articulo_contenido_id], [delete_url], [type_name]) VALUES (2091, N'product-12.jpg', N'/Files/find/1105?filename=4eemwad2ssyxh27r6cr6-product-12.jpg', N'image/jpeg', 118857, N'/Files/find/1105?filename=4eemwad2ssyxh27r6cr6-product-12.jpg', 1, 1105, N'/Files/Delete/1105?filename=product-12.jpg', N'image')
INSERT [dbo].[media] ([id], [name], [url], [type], [size], [thumb], [isServer], [articulo_contenido_id], [delete_url], [type_name]) VALUES (2092, N'dsc_4941---.jpg', N'/Files/find/1067?filename=2sap4nf2jpaz8mfflnmc-dsc_4941---.jpg', N'image/jpeg', 190576, N'/Files/find/1067?filename=2sap4nf2jpaz8mfflnmc-dsc_4941---.jpg', 1, 1067, N'/Files/Delete/1067?filename=dsc_4941---.jpg', N'image')
INSERT [dbo].[media] ([id], [name], [url], [type], [size], [thumb], [isServer], [articulo_contenido_id], [delete_url], [type_name]) VALUES (2093, N'dsc_4941---.jpg', N'/Files/find/1066?filename=xd4p8g62vrpn5yzlf9sd-dsc_4941---.jpg', N'image/jpeg', 190576, N'/Files/find/1066?filename=xd4p8g62vrpn5yzlf9sd-dsc_4941---.jpg', 1, 1066, N'/Files/Delete/1066?filename=dsc_4941---.jpg', N'image')
INSERT [dbo].[media] ([id], [name], [url], [type], [size], [thumb], [isServer], [articulo_contenido_id], [delete_url], [type_name]) VALUES (2094, N'dsc_4941---.jpg', N'/Files/find/1138?filename=txjmq4w2hqq5m4qcj8xu-dsc_4941---.jpg', N'image/jpeg', 190576, N'/Files/find/1138?filename=txjmq4w2hqq5m4qcj8xu-dsc_4941---.jpg', 1, 1138, N'/Files/Delete/1138?filename=dsc_4941---.jpg', N'image')
INSERT [dbo].[media] ([id], [name], [url], [type], [size], [thumb], [isServer], [articulo_contenido_id], [delete_url], [type_name]) VALUES (2095, N'idolo-benni.jpeg', N'/Files/find/1138?filename=h7dhk8jjgvu7tdmmesrt-idolo-benni.jpeg', N'image/jpeg', 117966, N'/Files/find/1138?filename=h7dhk8jjgvu7tdmmesrt-idolo-benni.jpeg', 1, 1138, N'/Files/Delete/1138?filename=idolo-benni.jpeg', N'image')
INSERT [dbo].[media] ([id], [name], [url], [type], [size], [thumb], [isServer], [articulo_contenido_id], [delete_url], [type_name]) VALUES (2096, N'dsc_5039---.jpg', N'/Files/find/1067?filename=yasdexu2aznfvj84eqng-dsc_5039---.jpg', N'image/jpeg', 140110, N'/Files/find/1067?filename=yasdexu2aznfvj84eqng-dsc_5039---.jpg', 1, 1067, N'/Files/Delete/1067?filename=dsc_5039---.jpg', N'image')
INSERT [dbo].[media] ([id], [name], [url], [type], [size], [thumb], [isServer], [articulo_contenido_id], [delete_url], [type_name]) VALUES (2097, N'dsc_4941---.jpg', N'/Files/find/1146?filename=m3m97uj2k9ujy5cz2sjc-dsc_4941---.jpg', N'image/jpeg', 190576, N'/Files/find/1146?filename=m3m97uj2k9ujy5cz2sjc-dsc_4941---.jpg', 1, 1146, N'/Files/Delete/1146?filename=dsc_4941---.jpg', N'image')
INSERT [dbo].[media] ([id], [name], [url], [type], [size], [thumb], [isServer], [articulo_contenido_id], [delete_url], [type_name]) VALUES (2098, N'sss', N'https://www.youtube.com/embed/0WWzgGyAH6Y', N'video', 0, N'http://img.youtube.com/vi/0WWzgGyAH6Y/mqdefault.jpg', 0, 1067, NULL, N'video')
INSERT [dbo].[media] ([id], [name], [url], [type], [size], [thumb], [isServer], [articulo_contenido_id], [delete_url], [type_name]) VALUES (2099, N'inceptiom', N'http://taylorholmes.com/wp-content/uploads/2010/07/inception-explained.jpg', N'image', 0, N'http://taylorholmes.com/wp-content/uploads/2010/07/inception-explained.jpg', 0, 1068, NULL, N'image')
INSERT [dbo].[media] ([id], [name], [url], [type], [size], [thumb], [isServer], [articulo_contenido_id], [delete_url], [type_name]) VALUES (2100, N'inceptiom', N'http://taylorholmes.com/wp-content/uploads/2010/07/inception-explained.jpg', N'image', 0, N'http://taylorholmes.com/wp-content/uploads/2010/07/inception-explained.jpg', 0, 1068, NULL, N'image')
INSERT [dbo].[media] ([id], [name], [url], [type], [size], [thumb], [isServer], [articulo_contenido_id], [delete_url], [type_name]) VALUES (2101, N'inceptiom', N'http://taylorholmes.com/wp-content/uploads/2010/07/inception-explained.jpg', N'image', 0, N'http://taylorholmes.com/wp-content/uploads/2010/07/inception-explained.jpg', 0, 1068, NULL, N'image')
INSERT [dbo].[media] ([id], [name], [url], [type], [size], [thumb], [isServer], [articulo_contenido_id], [delete_url], [type_name]) VALUES (2102, N'inceptiom', N'http://taylorholmes.com/wp-content/uploads/2010/07/inception-explained.jpg', N'image', 0, N'http://taylorholmes.com/wp-content/uploads/2010/07/inception-explained.jpg', 0, 1068, NULL, N'image')
SET IDENTITY_INSERT [dbo].[media] OFF
SET IDENTITY_INSERT [dbo].[media_album] ON 

INSERT [dbo].[media_album] ([id], [id_titulo], [titulo], [width], [height], [media_tipo_id]) VALUES (1, N'inicio-front', N'inicio front', 1000, 100, 1)
SET IDENTITY_INSERT [dbo].[media_album] OFF
SET IDENTITY_INSERT [dbo].[media_album_user] ON 

INSERT [dbo].[media_album_user] ([id], [media_album_id], [usuario_id]) VALUES (1, 1, N'058a9f60-1a4f-46b3-8ae2-10dd2efae8a2')
SET IDENTITY_INSERT [dbo].[media_album_user] OFF
SET IDENTITY_INSERT [dbo].[media_tipo] ON 

INSERT [dbo].[media_tipo] ([id], [tipo]) VALUES (1, N'.jpg')
INSERT [dbo].[media_tipo] ([id], [tipo]) VALUES (2, N'.pdf')
SET IDENTITY_INSERT [dbo].[media_tipo] OFF
SET IDENTITY_INSERT [dbo].[slideshow] ON 

INSERT [dbo].[slideshow] ([id], [url_image], [text_html], [id_articulo], [active], [type], [size], [isServer], [type_name], [thumb], [titulo], [descripcion], [posicion]) VALUES (94, N'http://vignette3.wikia.nocookie.net/inception/images/e/ec/Secondkick.jpg/revision/latest?cb=20100808223939', NULL, NULL, NULL, N'image', 0, 0, N'image', N'http://vignette3.wikia.nocookie.net/inception/images/e/ec/Secondkick.jpg/revision/latest?cb=20100808223939', NULL, NULL, NULL)
INSERT [dbo].[slideshow] ([id], [url_image], [text_html], [id_articulo], [active], [type], [size], [isServer], [type_name], [thumb], [titulo], [descripcion], [posicion]) VALUES (106, N'http://vignette3.wikia.nocookie.net/inception/images/8/83/Dream.png/revision/latest?cb=20130729003653', NULL, NULL, NULL, N'image', 0, 0, N'image', N'http://vignette3.wikia.nocookie.net/inception/images/8/83/Dream.png/revision/latest?cb=20130729003653', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[slideshow] OFF
ALTER TABLE [dbo].[articulos_contenido]  WITH CHECK ADD  CONSTRAINT [FK_articulos_contenido_articulos_contenido] FOREIGN KEY([parent_id])
REFERENCES [dbo].[articulos_contenido] ([id])
GO
ALTER TABLE [dbo].[articulos_contenido] CHECK CONSTRAINT [FK_articulos_contenido_articulos_contenido]
GO
ALTER TABLE [dbo].[articulos_contenido_media]  WITH CHECK ADD  CONSTRAINT [FK_articulos_contenido_media_articulos_contenido] FOREIGN KEY([articulos_contenido_id])
REFERENCES [dbo].[articulos_contenido] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[articulos_contenido_media] CHECK CONSTRAINT [FK_articulos_contenido_media_articulos_contenido]
GO
ALTER TABLE [dbo].[articulos_contenido_media]  WITH CHECK ADD  CONSTRAINT [FK_articulos_contenido_media_media] FOREIGN KEY([media_id])
REFERENCES [dbo].[media] ([id])
GO
ALTER TABLE [dbo].[articulos_contenido_media] CHECK CONSTRAINT [FK_articulos_contenido_media_media]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_User_Id] FOREIGN KEY([User_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_User_Id]
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
ALTER TABLE [dbo].[cambio_combustible]  WITH CHECK ADD  CONSTRAINT [FK_cambio_combustible_usuario_id] FOREIGN KEY([user_id])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[cambio_combustible] CHECK CONSTRAINT [FK_cambio_combustible_usuario_id]
GO
ALTER TABLE [dbo].[cambio_combustible_precio]  WITH CHECK ADD  CONSTRAINT [FK_cambio_combustible_cambio_precio] FOREIGN KEY([id_cambio_combustible])
REFERENCES [dbo].[cambio_combustible] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[cambio_combustible_precio] CHECK CONSTRAINT [FK_cambio_combustible_cambio_precio]
GO
ALTER TABLE [dbo].[cambio_combustible_precio]  WITH CHECK ADD  CONSTRAINT [FK_combustible_id] FOREIGN KEY([id_combustible])
REFERENCES [dbo].[combustible] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[cambio_combustible_precio] CHECK CONSTRAINT [FK_combustible_id]
GO
ALTER TABLE [dbo].[Files]  WITH CHECK ADD  CONSTRAINT [FK_Files_media_album] FOREIGN KEY([media_album_id])
REFERENCES [dbo].[media_album] ([id])
GO
ALTER TABLE [dbo].[Files] CHECK CONSTRAINT [FK_Files_media_album]
GO
ALTER TABLE [dbo].[media]  WITH CHECK ADD  CONSTRAINT [FK_media_articulos_contenido] FOREIGN KEY([articulo_contenido_id])
REFERENCES [dbo].[articulos_contenido] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[media] CHECK CONSTRAINT [FK_media_articulos_contenido]
GO
ALTER TABLE [dbo].[media_album]  WITH CHECK ADD  CONSTRAINT [FK_Table_1_media_tipo] FOREIGN KEY([media_tipo_id])
REFERENCES [dbo].[media_tipo] ([id])
GO
ALTER TABLE [dbo].[media_album] CHECK CONSTRAINT [FK_Table_1_media_tipo]
GO
ALTER TABLE [dbo].[media_album_user]  WITH CHECK ADD  CONSTRAINT [FK_media_album_user_AspNetUsers] FOREIGN KEY([usuario_id])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[media_album_user] CHECK CONSTRAINT [FK_media_album_user_AspNetUsers]
GO
ALTER TABLE [dbo].[media_album_user]  WITH CHECK ADD  CONSTRAINT [FK_media_album_user_media_album] FOREIGN KEY([media_album_id])
REFERENCES [dbo].[media_album] ([id])
GO
ALTER TABLE [dbo].[media_album_user] CHECK CONSTRAINT [FK_media_album_user_media_album]
GO
ALTER TABLE [dbo].[media_combustible]  WITH CHECK ADD  CONSTRAINT [FK_media_combustible_cambio_combustible] FOREIGN KEY([cambio_combustible_id])
REFERENCES [dbo].[cambio_combustible] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[media_combustible] CHECK CONSTRAINT [FK_media_combustible_cambio_combustible]
GO
ALTER TABLE [dbo].[slideshow]  WITH CHECK ADD  CONSTRAINT [FK_slideshow_articulos_contenido] FOREIGN KEY([id_articulo])
REFERENCES [dbo].[articulos_contenido] ([id])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[slideshow] CHECK CONSTRAINT [FK_slideshow_articulos_contenido]
GO
