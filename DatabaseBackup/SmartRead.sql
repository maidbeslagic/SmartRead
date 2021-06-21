USE [master]
GO
/****** Object:  Database [SmartRead]    Script Date: 21. 6. 2021. 22:30:46 ******/
CREATE DATABASE [SmartRead]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SmartRead', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\SmartRead.mdf' , SIZE = 16384KB , MAXSIZE = UNLIMITED, FILEGROWTH = 16384KB )
 LOG ON 
( NAME = N'SmartRead_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\SmartRead_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 16384KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [SmartRead] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SmartRead].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SmartRead] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SmartRead] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SmartRead] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SmartRead] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SmartRead] SET ARITHABORT OFF 
GO
ALTER DATABASE [SmartRead] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SmartRead] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SmartRead] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SmartRead] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SmartRead] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SmartRead] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SmartRead] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SmartRead] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SmartRead] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SmartRead] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SmartRead] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SmartRead] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SmartRead] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SmartRead] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SmartRead] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SmartRead] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SmartRead] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SmartRead] SET RECOVERY FULL 
GO
ALTER DATABASE [SmartRead] SET  MULTI_USER 
GO
ALTER DATABASE [SmartRead] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SmartRead] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SmartRead] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SmartRead] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SmartRead] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'SmartRead', N'ON'
GO
ALTER DATABASE [SmartRead] SET QUERY_STORE = OFF
GO
USE [SmartRead]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 21. 6. 2021. 22:30:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Administratori]    Script Date: 21. 6. 2021. 22:30:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Administratori](
	[Id] [int] NOT NULL,
 CONSTRAINT [PK_Administratori] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clanci]    Script Date: 21. 6. 2021. 22:30:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clanci](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Naslov] [nvarchar](max) NULL,
	[Text] [nvarchar](max) NULL,
	[Slika] [varbinary](max) NULL,
	[Cijena] [float] NOT NULL,
	[Odobren] [bit] NOT NULL,
	[Obrisan] [bit] NOT NULL,
	[AutorId] [int] NOT NULL,
	[OdobravateljId] [int] NULL,
 CONSTRAINT [PK_Clanci] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Drzave]    Script Date: 21. 6. 2021. 22:30:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Drzave](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Naziv] [nvarchar](max) NULL,
 CONSTRAINT [PK_Drzave] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kategorije]    Script Date: 21. 6. 2021. 22:30:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kategorije](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Naziv] [nvarchar](max) NULL,
	[Obrisan] [bit] NOT NULL,
 CONSTRAINT [PK_Kategorije] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Korisnici]    Script Date: 21. 6. 2021. 22:30:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Korisnici](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ime] [nvarchar](max) NULL,
	[Prezime] [nvarchar](max) NULL,
	[Mail] [nvarchar](max) NULL,
	[Username] [nvarchar](max) NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[PasswordSalt] [nvarchar](max) NULL,
	[DatumRodjenja] [datetime2](7) NOT NULL,
	[DatumRegistracije] [datetime2](7) NOT NULL,
	[Kredit] [float] NOT NULL,
	[Obrisan] [bit] NOT NULL,
	[Slika] [varbinary](max) NULL,
	[DrzavaId] [int] NOT NULL,
 CONSTRAINT [PK_Korisnici] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KorisnikClanci]    Script Date: 21. 6. 2021. 22:30:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KorisnikClanci](
	[KorisnikId] [int] NOT NULL,
	[ClanakId] [int] NOT NULL,
	[BrojPosjeta] [int] NOT NULL,
 CONSTRAINT [PK_KorisnikClanci] PRIMARY KEY CLUSTERED 
(
	[KorisnikId] ASC,
	[ClanakId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KorisnikKategorije]    Script Date: 21. 6. 2021. 22:30:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KorisnikKategorije](
	[KorisnikId] [int] NOT NULL,
	[KategorijaId] [int] NOT NULL,
	[Obrisan] [bit] NOT NULL,
	[DatumPretplate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_KorisnikKategorije] PRIMARY KEY CLUSTERED 
(
	[KorisnikId] ASC,
	[KategorijaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KorisnikPrijave]    Script Date: 21. 6. 2021. 22:30:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KorisnikPrijave](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[VrstaPrijave] [int] NOT NULL,
	[Opis] [nvarchar](max) NULL,
	[VrijemePrijave] [datetime2](7) NOT NULL,
	[Pregledano] [bit] NOT NULL,
	[Uvazeno] [bit] NOT NULL,
	[KorisnikId] [int] NOT NULL,
	[ClanakId] [int] NOT NULL,
 CONSTRAINT [PK_KorisnikPrijave] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Uplate]    Script Date: 21. 6. 2021. 22:30:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Uplate](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Iznos] [real] NOT NULL,
	[Opis] [nvarchar](max) NULL,
	[KorisnikId] [int] NOT NULL,
 CONSTRAINT [PK_Uplate] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200506090947_Inicijalne-tabele', N'3.1.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210206223711_KategorijaObrisan', N'3.1.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210206231740_KategorijaPromjenaTipa', N'3.1.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210621202646_DodaniKorisnikClanak', N'3.1.11')
GO
INSERT [dbo].[Administratori] ([Id]) VALUES (1)
GO
SET IDENTITY_INSERT [dbo].[Drzave] ON 

INSERT [dbo].[Drzave] ([Id], [Naziv]) VALUES (1, N'Albanija')
INSERT [dbo].[Drzave] ([Id], [Naziv]) VALUES (2, N'Bosna i Hercegovina')
INSERT [dbo].[Drzave] ([Id], [Naziv]) VALUES (3, N'Hrvatska')
INSERT [dbo].[Drzave] ([Id], [Naziv]) VALUES (4, N'Srbija')
INSERT [dbo].[Drzave] ([Id], [Naziv]) VALUES (5, N'Crna Gora')
SET IDENTITY_INSERT [dbo].[Drzave] OFF
GO
SET IDENTITY_INSERT [dbo].[Kategorije] ON 

INSERT [dbo].[Kategorije] ([Id], [Naziv], [Obrisan]) VALUES (1, N'Tehnologija', 0)
INSERT [dbo].[Kategorije] ([Id], [Naziv], [Obrisan]) VALUES (2, N'Muzika', 0)
SET IDENTITY_INSERT [dbo].[Kategorije] OFF
GO
SET IDENTITY_INSERT [dbo].[Korisnici] ON 

INSERT [dbo].[Korisnici] ([Id], [Ime], [Prezime], [Mail], [Username], [PasswordHash], [PasswordSalt], [DatumRodjenja], [DatumRegistracije], [Kredit], [Obrisan], [Slika], [DrzavaId]) VALUES (1, N'Maid', N'Beslagic', N'maid.beslagic@edu.fit.ba', N'maid', N'H7hwlHYphyUsgPLUzBcm5PnZ9h4=', N'e8QomoV7nRbzcWCTmUxHig==', CAST(N'1996-12-15T00:00:00.0000000' AS DateTime2), CAST(N'2020-05-06T00:00:00.0000000' AS DateTime2), 0, 0, NULL, 2)
INSERT [dbo].[Korisnici] ([Id], [Ime], [Prezime], [Mail], [Username], [PasswordHash], [PasswordSalt], [DatumRodjenja], [DatumRegistracije], [Kredit], [Obrisan], [Slika], [DrzavaId]) VALUES (3, N'Mirza', N'Smajic', N'mirza.smajic@edu.fit.ba', N'mirza', N'H7hwlHYphyUsgPLUzBcm5PnZ9h4=', N'e8QomoV7nRbzcWCTmUxHig==', CAST(N'1992-07-14T00:00:00.0000000' AS DateTime2), CAST(N'2020-05-07T00:00:00.0000000' AS DateTime2), 0, 0, NULL, 2)
SET IDENTITY_INSERT [dbo].[Korisnici] OFF
GO
SET IDENTITY_INSERT [dbo].[Uplate] ON 

INSERT [dbo].[Uplate] ([Id], [Iznos], [Opis], [KorisnikId]) VALUES (1, 10, N'Kredit', 1)
SET IDENTITY_INSERT [dbo].[Uplate] OFF
GO
/****** Object:  Index [IX_Clanci_AutorId]    Script Date: 21. 6. 2021. 22:30:46 ******/
CREATE NONCLUSTERED INDEX [IX_Clanci_AutorId] ON [dbo].[Clanci]
(
	[AutorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Clanci_OdobravateljId]    Script Date: 21. 6. 2021. 22:30:46 ******/
CREATE NONCLUSTERED INDEX [IX_Clanci_OdobravateljId] ON [dbo].[Clanci]
(
	[OdobravateljId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Korisnici_DrzavaId]    Script Date: 21. 6. 2021. 22:30:46 ******/
CREATE NONCLUSTERED INDEX [IX_Korisnici_DrzavaId] ON [dbo].[Korisnici]
(
	[DrzavaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_KorisnikClanci_ClanakId]    Script Date: 21. 6. 2021. 22:30:46 ******/
CREATE NONCLUSTERED INDEX [IX_KorisnikClanci_ClanakId] ON [dbo].[KorisnikClanci]
(
	[ClanakId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_KorisnikKategorije_KategorijaId]    Script Date: 21. 6. 2021. 22:30:46 ******/
CREATE NONCLUSTERED INDEX [IX_KorisnikKategorije_KategorijaId] ON [dbo].[KorisnikKategorije]
(
	[KategorijaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_KorisnikPrijave_ClanakId]    Script Date: 21. 6. 2021. 22:30:46 ******/
CREATE NONCLUSTERED INDEX [IX_KorisnikPrijave_ClanakId] ON [dbo].[KorisnikPrijave]
(
	[ClanakId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_KorisnikPrijave_KorisnikId]    Script Date: 21. 6. 2021. 22:30:46 ******/
CREATE NONCLUSTERED INDEX [IX_KorisnikPrijave_KorisnikId] ON [dbo].[KorisnikPrijave]
(
	[KorisnikId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Uplate_KorisnikId]    Script Date: 21. 6. 2021. 22:30:46 ******/
CREATE NONCLUSTERED INDEX [IX_Uplate_KorisnikId] ON [dbo].[Uplate]
(
	[KorisnikId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Kategorije] ADD  DEFAULT (CONVERT([bit],(0))) FOR [Obrisan]
GO
ALTER TABLE [dbo].[Administratori]  WITH CHECK ADD  CONSTRAINT [FK_Administratori_Korisnici_Id] FOREIGN KEY([Id])
REFERENCES [dbo].[Korisnici] ([Id])
GO
ALTER TABLE [dbo].[Administratori] CHECK CONSTRAINT [FK_Administratori_Korisnici_Id]
GO
ALTER TABLE [dbo].[Clanci]  WITH CHECK ADD  CONSTRAINT [FK_Clanci_Administratori_OdobravateljId] FOREIGN KEY([OdobravateljId])
REFERENCES [dbo].[Administratori] ([Id])
GO
ALTER TABLE [dbo].[Clanci] CHECK CONSTRAINT [FK_Clanci_Administratori_OdobravateljId]
GO
ALTER TABLE [dbo].[Clanci]  WITH CHECK ADD  CONSTRAINT [FK_Clanci_Korisnici_AutorId] FOREIGN KEY([AutorId])
REFERENCES [dbo].[Korisnici] ([Id])
GO
ALTER TABLE [dbo].[Clanci] CHECK CONSTRAINT [FK_Clanci_Korisnici_AutorId]
GO
ALTER TABLE [dbo].[Korisnici]  WITH CHECK ADD  CONSTRAINT [FK_Korisnici_Drzave_DrzavaId] FOREIGN KEY([DrzavaId])
REFERENCES [dbo].[Drzave] ([Id])
GO
ALTER TABLE [dbo].[Korisnici] CHECK CONSTRAINT [FK_Korisnici_Drzave_DrzavaId]
GO
ALTER TABLE [dbo].[KorisnikClanci]  WITH CHECK ADD  CONSTRAINT [FK_KorisnikClanci_Clanci_ClanakId] FOREIGN KEY([ClanakId])
REFERENCES [dbo].[Clanci] ([Id])
GO
ALTER TABLE [dbo].[KorisnikClanci] CHECK CONSTRAINT [FK_KorisnikClanci_Clanci_ClanakId]
GO
ALTER TABLE [dbo].[KorisnikClanci]  WITH CHECK ADD  CONSTRAINT [FK_KorisnikClanci_Korisnici_KorisnikId] FOREIGN KEY([KorisnikId])
REFERENCES [dbo].[Korisnici] ([Id])
GO
ALTER TABLE [dbo].[KorisnikClanci] CHECK CONSTRAINT [FK_KorisnikClanci_Korisnici_KorisnikId]
GO
ALTER TABLE [dbo].[KorisnikKategorije]  WITH CHECK ADD  CONSTRAINT [FK_KorisnikKategorije_Kategorije_KategorijaId] FOREIGN KEY([KategorijaId])
REFERENCES [dbo].[Kategorije] ([Id])
GO
ALTER TABLE [dbo].[KorisnikKategorije] CHECK CONSTRAINT [FK_KorisnikKategorije_Kategorije_KategorijaId]
GO
ALTER TABLE [dbo].[KorisnikKategorije]  WITH CHECK ADD  CONSTRAINT [FK_KorisnikKategorije_Korisnici_KorisnikId] FOREIGN KEY([KorisnikId])
REFERENCES [dbo].[Korisnici] ([Id])
GO
ALTER TABLE [dbo].[KorisnikKategorije] CHECK CONSTRAINT [FK_KorisnikKategorije_Korisnici_KorisnikId]
GO
ALTER TABLE [dbo].[KorisnikPrijave]  WITH CHECK ADD  CONSTRAINT [FK_KorisnikPrijave_Clanci_ClanakId] FOREIGN KEY([ClanakId])
REFERENCES [dbo].[Clanci] ([Id])
GO
ALTER TABLE [dbo].[KorisnikPrijave] CHECK CONSTRAINT [FK_KorisnikPrijave_Clanci_ClanakId]
GO
ALTER TABLE [dbo].[KorisnikPrijave]  WITH CHECK ADD  CONSTRAINT [FK_KorisnikPrijave_Korisnici_KorisnikId] FOREIGN KEY([KorisnikId])
REFERENCES [dbo].[Korisnici] ([Id])
GO
ALTER TABLE [dbo].[KorisnikPrijave] CHECK CONSTRAINT [FK_KorisnikPrijave_Korisnici_KorisnikId]
GO
ALTER TABLE [dbo].[Uplate]  WITH CHECK ADD  CONSTRAINT [FK_Uplate_Korisnici_KorisnikId] FOREIGN KEY([KorisnikId])
REFERENCES [dbo].[Korisnici] ([Id])
GO
ALTER TABLE [dbo].[Uplate] CHECK CONSTRAINT [FK_Uplate_Korisnici_KorisnikId]
GO
USE [master]
GO
ALTER DATABASE [SmartRead] SET  READ_WRITE 
GO
