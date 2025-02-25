USE [master]
GO
/****** Object:  Database [TechNihongo_V1]    Script Date: 16/01/2025 8:31:02 CH ******/
CREATE DATABASE [TechNihongo_V1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TechNihongo_V1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLMAX\MSSQL\DATA\TechNihongo_V1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TechNihongo_V1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLMAX\MSSQL\DATA\TechNihongo_V1_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [TechNihongo_V1] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TechNihongo_V1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TechNihongo_V1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TechNihongo_V1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TechNihongo_V1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TechNihongo_V1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TechNihongo_V1] SET ARITHABORT OFF 
GO
ALTER DATABASE [TechNihongo_V1] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [TechNihongo_V1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TechNihongo_V1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TechNihongo_V1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TechNihongo_V1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TechNihongo_V1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TechNihongo_V1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TechNihongo_V1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TechNihongo_V1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TechNihongo_V1] SET  ENABLE_BROKER 
GO
ALTER DATABASE [TechNihongo_V1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TechNihongo_V1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TechNihongo_V1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TechNihongo_V1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TechNihongo_V1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TechNihongo_V1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TechNihongo_V1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TechNihongo_V1] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TechNihongo_V1] SET  MULTI_USER 
GO
ALTER DATABASE [TechNihongo_V1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TechNihongo_V1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TechNihongo_V1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TechNihongo_V1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TechNihongo_V1] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TechNihongo_V1] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [TechNihongo_V1] SET QUERY_STORE = OFF
GO
USE [TechNihongo_V1]
GO
/****** Object:  User [max5123]    Script Date: 16/01/2025 8:31:02 CH ******/
CREATE USER [max5123] FOR LOGIN [max5123] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [max5123]
GO
ALTER ROLE [db_datareader] ADD MEMBER [max5123]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [max5123]
GO
USE [TechNihongo_V1]
GO
/****** Object:  Sequence [dbo].[Quiz_SEQ]    Script Date: 16/01/2025 8:31:02 CH ******/
CREATE SEQUENCE [dbo].[Quiz_SEQ] 
 AS [bigint]
 START WITH 1
 INCREMENT BY 50
 MINVALUE -9223372036854775808
 MAXVALUE 9223372036854775807
 CACHE 
GO
/****** Object:  Table [dbo].[Achievement]    Script Date: 16/01/2025 8:31:02 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Achievement](
	[achievement_id] [int] IDENTITY(1,1) NOT NULL,
	[code] [nvarchar](50) NULL,
	[badge_name] [nvarchar](100) NULL,
	[description] [nvarchar](max) NULL,
	[image_url] [nvarchar](255) NULL,
	[category] [nvarchar](50) NULL,
	[condition_type] [nvarchar](50) NULL,
	[condition_value] [int] NULL,
	[is_active] [bit] NULL,
	[display_order] [int] NULL,
	[created_at] [datetime2](7) NULL,
	[badgeName] [varchar](255) NULL,
	[conditionType] [varchar](255) NULL,
	[conditionValue] [int] NULL,
	[displayOrder] [int] NULL,
	[imageUrl] [varchar](255) NULL,
	[isActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[achievement_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AuthToken]    Script Date: 16/01/2025 8:31:03 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AuthToken](
	[token_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[token] [nvarchar](255) NULL,
	[token_type] [nvarchar](50) NULL,
	[expires_at] [datetime2](7) NULL,
	[created_at] [datetime2](7) NULL,
	[is_active] [bit] NULL,
	[createAt] [datetime2](6) NULL,
	[expiresAt] [datetime2](6) NULL,
	[isActive] [bit] NULL,
	[tokenType] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[token_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 16/01/2025 8:31:03 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[course_id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](255) NULL,
	[description] [nvarchar](max) NULL,
	[creator_id] [int] NULL,
	[domain_id] [int] NULL,
	[difficulty_level_id] [int] NULL,
	[attachment_url] [nvarchar](255) NULL,
	[estimated_duration] [int] NULL,
	[is_public] [bit] NULL,
	[is_premium] [bit] NULL,
	[created_at] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[course_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CourseStudyPlan]    Script Date: 16/01/2025 8:31:03 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CourseStudyPlan](
	[course_plan_id] [int] IDENTITY(1,1) NOT NULL,
	[course_id] [int] NULL,
	[plan_id] [int] NULL,
	[lesson_count] [int] NULL,
	[created_at] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[course_plan_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DifficultyLevel]    Script Date: 16/01/2025 8:31:03 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DifficultyLevel](
	[level_id] [int] IDENTITY(1,1) NOT NULL,
	[code] [nvarchar](20) NULL,
	[name] [nvarchar](100) NULL,
	[description] [nvarchar](max) NULL,
	[order_sequence] [int] NULL,
	[is_active] [bit] NULL,
	[created_at] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[level_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Domain]    Script Date: 16/01/2025 8:31:03 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Domain](
	[domain_id] [int] IDENTITY(1,1) NOT NULL,
	[code] [nvarchar](50) NULL,
	[name] [nvarchar](100) NULL,
	[description] [nvarchar](max) NULL,
	[parent_domain_id] [int] NULL,
	[is_active] [bit] NULL,
	[created_at] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[domain_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FlashCard]    Script Date: 16/01/2025 8:31:03 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FlashCard](
	[vocab_id] [int] IDENTITY(1,1) NOT NULL,
	[set_id] [int] NULL,
	[japanese_definition] [nvarchar](max) NULL,
	[viet_eng_translation] [nvarchar](max) NULL,
	[image_url] [nvarchar](255) NULL,
	[vocab_order] [int] NULL,
	[created_at] [datetime2](7) NULL,
	[last_updated] [datetime2](7) NULL,
	[update_At] [datetime2](6) NULL,
	[description] [varchar](255) NULL,
	[is_public] [bit] NULL,
	[title] [varchar](255) NULL,
	[updated_at] [datetime2](6) NULL,
	[creator_id] [int] NULL,
	[difficulty_level_id] [int] NULL,
	[domain_id] [int] NULL,
	[resource_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[vocab_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FolderItem]    Script Date: 16/01/2025 8:31:03 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FolderItem](
	[folder_item_id] [int] IDENTITY(1,1) NOT NULL,
	[folder_id] [int] NULL,
	[set_id] [int] NULL,
	[added_at] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[folder_item_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LearningPath]    Script Date: 16/01/2025 8:31:03 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LearningPath](
	[path_id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](255) NULL,
	[description] [nvarchar](max) NULL,
	[domain_id] [int] NULL,
	[creator_id] [int] NULL,
	[is_public] [bit] NULL,
	[created_at] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[path_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LearningResource]    Script Date: 16/01/2025 8:31:03 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LearningResource](
	[resource_id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](255) NULL,
	[description] [nvarchar](max) NULL,
	[resource_type_id] [int] NULL,
	[content_url] [nvarchar](255) NULL,
	[domain_id] [int] NULL,
	[creator_id] [int] NULL,
	[is_premium] [bit] NULL,
	[is_public] [bit] NULL,
	[is_active] [bit] NULL,
	[created_at] [datetime2](7) NULL,
	[updated_at] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[resource_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lesson]    Script Date: 16/01/2025 8:31:03 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lesson](
	[lesson_id] [int] IDENTITY(1,1) NOT NULL,
	[plan_id] [int] NULL,
	[title] [nvarchar](255) NULL,
	[content] [nvarchar](max) NULL,
	[lesson_order] [int] NULL,
	[is_prerequisite] [bit] NULL,
	[min_completion_percentage] [decimal](5, 2) NULL,
	[created_at] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[lesson_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LessonResource]    Script Date: 16/01/2025 8:31:03 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LessonResource](
	[lesson_resource_id] [int] IDENTITY(1,1) NOT NULL,
	[lesson_id] [int] NULL,
	[type] [nvarchar](100) NULL,
	[type_order] [int] NULL,
	[resource_id] [int] NULL,
	[set_id] [int] NULL,
	[quiz_id] [int] NULL,
	[created_at] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[lesson_resource_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PathCourse]    Script Date: 16/01/2025 8:31:03 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PathCourse](
	[path_course_id] [int] IDENTITY(1,1) NOT NULL,
	[path_id] [int] NULL,
	[course_id] [int] NULL,
	[course_order] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[path_course_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentHistory]    Script Date: 16/01/2025 8:31:03 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentHistory](
	[history_id] [int] IDENTITY(1,1) NOT NULL,
	[transaction_id] [int] NULL,
	[status] [nvarchar](20) NULL,
	[transaction_code] [nvarchar](255) NULL,
	[admin_confirmed_by] [int] NULL,
	[admin_confirmed_at] [datetime2](7) NULL,
	[note] [nvarchar](max) NULL,
	[created_at] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[history_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentMethod]    Script Date: 16/01/2025 8:31:03 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentMethod](
	[method_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NULL,
	[code] [nvarchar](50) NULL,
	[is_active] [bit] NULL,
	[payment_instructions] [nvarchar](max) NULL,
	[created_at] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[method_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentTransaction]    Script Date: 16/01/2025 8:31:03 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentTransaction](
	[transaction_id] [int] IDENTITY(1,1) NOT NULL,
	[subscription_id] [int] NULL,
	[method_id] [int] NULL,
	[final_amount] [int] NULL,
	[currency] [nvarchar](3) NULL,
	[payment_instructions] [nvarchar](max) NULL,
	[expires_at] [datetime2](7) NULL,
	[created_at] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[transaction_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quiz]    Script Date: 16/01/2025 8:31:03 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quiz](
	[quiz_id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](255) NULL,
	[description] [nvarchar](max) NULL,
	[quiz_type] [nvarchar](50) NULL,
	[domain_id] [int] NULL,
	[creator_id] [int] NULL,
	[difficulty_level_id] [int] NULL,
	[time_limit] [int] NULL,
	[passing_score] [decimal](5, 2) NULL,
	[is_public] [bit] NULL,
	[is_active] [bit] NULL,
	[created_at] [datetime2](7) NULL,
	[updated_at] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[quiz_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuizAnswerOption]    Script Date: 16/01/2025 8:31:03 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuizAnswerOption](
	[option_id] [int] IDENTITY(1,1) NOT NULL,
	[question_id] [int] NULL,
	[option_text] [nvarchar](max) NULL,
	[is_correct] [bit] NULL,
	[explanation] [nvarchar](max) NULL,
	[option_order] [int] NULL,
	[created_at] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[option_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuizAnswerResponse]    Script Date: 16/01/2025 8:31:03 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuizAnswerResponse](
	[response_id] [int] IDENTITY(1,1) NOT NULL,
	[attempt_id] [int] NULL,
	[question_id] [int] NULL,
	[selected_option_id] [int] NULL,
	[text_response] [nvarchar](max) NULL,
	[is_correct] [bit] NULL,
	[points_earned] [decimal](5, 2) NULL,
	[response_time] [int] NULL,
	[created_at] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[response_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuizQuestion]    Script Date: 16/01/2025 8:31:03 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuizQuestion](
	[question_id] [int] IDENTITY(1,1) NOT NULL,
	[quiz_id] [int] NULL,
	[question_text] [nvarchar](max) NULL,
	[question_type] [nvarchar](50) NULL,
	[explanation] [nvarchar](max) NULL,
	[points] [int] NULL,
	[question_order] [int] NULL,
	[is_required] [bit] NULL,
	[media_url] [nvarchar](255) NULL,
	[created_at] [datetime2](7) NULL,
	[updated_at] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[question_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ResourceType]    Script Date: 16/01/2025 8:31:03 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResourceType](
	[type_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](max) NULL,
	[allowed_file_extensions] [nvarchar](max) NULL,
	[is_active] [bit] NULL,
	[created_at] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 16/01/2025 8:31:03 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[role_id] [int] IDENTITY(1,1) NOT NULL,
	[rolename] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 16/01/2025 8:31:03 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[student_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[bio] [nvarchar](max) NULL,
	[daily_goal_minutes] [int] NULL,
	[reminder_enabled] [bit] NULL,
	[reminder_time] [datetime2](6) NULL,
	[updated_at] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[student_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentAchievement]    Script Date: 16/01/2025 8:31:03 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentAchievement](
	[student_achievement_id] [int] IDENTITY(1,1) NOT NULL,
	[student_id] [int] NULL,
	[achievement_id] [int] NULL,
	[achieved_at] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[student_achievement_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentAchievementProgress]    Script Date: 16/01/2025 8:31:03 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentAchievementProgress](
	[progress_id] [int] IDENTITY(1,1) NOT NULL,
	[student_id] [int] NULL,
	[achievement_id] [int] NULL,
	[current_value] [int] NULL,
	[required_value] [int] NULL,
	[last_updated] [datetime2](7) NULL,
	[created_at] [datetime2](7) NULL,
	[history_id] [int] NOT NULL,
	[admin_confirmed_at] [datetime2](6) NULL,
	[status] [varchar](255) NULL,
	[transaction_code] [varchar](255) NULL,
	[completed_date] [datetime2](6) NULL,
	[completed_lessons] [int] NULL,
	[completion_percentage] [numeric](5, 2) NULL,
	[completion_status] [varchar](255) NULL,
	[total_study_time] [int] NULL,
	[updated_at] [datetime2](6) NULL,
	[admin_confirmed_by] [int] NULL,
	[transaction_id] [int] NULL,
	[course_id] [int] NOT NULL,
	[current_lesson_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[progress_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentCourseProgress]    Script Date: 16/01/2025 8:31:03 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentCourseProgress](
	[progress_id] [int] IDENTITY(1,1) NOT NULL,
	[student_id] [int] NULL,
	[course_id] [int] NULL,
	[completion_percentage] [decimal](5, 2) NULL,
	[completion_status] [nvarchar](20) NULL,
	[current_lesson_id] [int] NULL,
	[completed_lessons] [int] NULL,
	[total_study_time] [int] NULL,
	[completed_date] [datetime2](7) NULL,
	[created_at] [datetime2](7) NULL,
	[updated_at] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[progress_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentCourseRating]    Script Date: 16/01/2025 8:31:03 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentCourseRating](
	[rating_id] [int] IDENTITY(1,1) NOT NULL,
	[student_id] [int] NULL,
	[course_id] [int] NULL,
	[rating] [decimal](2, 1) NULL,
	[is_verified] [bit] NULL,
	[created_at] [datetime2](7) NULL,
	[updated_at] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[rating_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentDailyLearningLog]    Script Date: 16/01/2025 8:31:03 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentDailyLearningLog](
	[log_id] [int] IDENTITY(1,1) NOT NULL,
	[student_id] [int] NULL,
	[log_date] [datetime2](6) NULL,
	[study_time] [int] NULL,
	[completed_lessons] [int] NULL,
	[completed_courses] [int] NULL,
	[quiz_attempts] [int] NULL,
	[points_earned] [decimal](5, 2) NULL,
	[created_at] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[log_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentFavorite]    Script Date: 16/01/2025 8:31:03 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentFavorite](
	[favorite_id] [int] IDENTITY(1,1) NOT NULL,
	[student_id] [int] NULL,
	[resource_id] [int] NULL,
	[notes] [nvarchar](max) NULL,
	[created_at] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[favorite_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentFlashCardSet]    Script Date: 16/01/2025 8:31:03 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentFlashCardSet](
	[set_id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](255) NULL,
	[description] [nvarchar](max) NULL,
	[domain_id] [int] NULL,
	[difficulty_level_id] [int] NULL,
	[creator_id] [int] NULL,
	[resource_id] [int] NULL,
	[is_public] [bit] NULL,
	[created_at] [datetime2](7) NULL,
	[updated_at] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[set_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentFlashCardSetProgress]    Script Date: 16/01/2025 8:31:03 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentFlashCardSetProgress](
	[progress_id] [int] IDENTITY(1,1) NOT NULL,
	[student_id] [int] NULL,
	[set_id] [int] NULL,
	[completion_percentage] [decimal](5, 2) NULL,
	[last_studied] [datetime2](7) NULL,
	[study_count] [int] NULL,
	[total_study_time] [int] NULL,
	[created_at] [datetime2](7) NULL,
	[updated_at] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[progress_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentFolder]    Script Date: 16/01/2025 8:31:03 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentFolder](
	[folder_id] [int] IDENTITY(1,1) NOT NULL,
	[student_id] [int] NULL,
	[name] [nvarchar](100) NULL,
	[description] [nvarchar](max) NULL,
	[created_at] [datetime2](7) NULL,
	[updated_at] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[folder_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentLearningStatistics]    Script Date: 16/01/2025 8:31:03 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentLearningStatistics](
	[stat_id] [int] IDENTITY(1,1) NOT NULL,
	[student_id] [int] NULL,
	[total_study_time] [int] NULL,
	[total_completed_courses] [int] NULL,
	[total_completed_lessons] [int] NULL,
	[total_completed_quizzes] [int] NULL,
	[active_days_count] [int] NULL,
	[total_achievements_unlocked] [int] NULL,
	[last_study_date] [datetime2](7) NULL,
	[created_at] [datetime2](7) NULL,
	[updated_at] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[stat_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentLessonProgress]    Script Date: 16/01/2025 8:31:03 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentLessonProgress](
	[progress_id] [int] IDENTITY(1,1) NOT NULL,
	[student_id] [int] NULL,
	[lesson_id] [int] NULL,
	[completion_percentage] [decimal](5, 2) NULL,
	[completion_status] [nvarchar](20) NULL,
	[last_studied] [datetime2](7) NULL,
	[completed_resources] [int] NULL,
	[total_study_time] [int] NULL,
	[highest_quiz_score] [decimal](5, 2) NULL,
	[notes] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[progress_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentLessonResourceProgress]    Script Date: 16/01/2025 8:31:03 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentLessonResourceProgress](
	[progress_id] [int] IDENTITY(1,1) NOT NULL,
	[student_id] [int] NULL,
	[lesson_resource_id] [int] NULL,
	[completion_status] [nvarchar](20) NULL,
	[is_completed] [bit] NULL,
	[last_accessed] [datetime2](7) NULL,
	[total_time_spent] [int] NULL,
	[notes] [nvarchar](max) NULL,
	[created_at] [datetime2](7) NULL,
	[updated_at] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[progress_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentQuizAttempt]    Script Date: 16/01/2025 8:31:03 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentQuizAttempt](
	[attempt_id] [int] IDENTITY(1,1) NOT NULL,
	[quiz_id] [int] NULL,
	[student_id] [int] NULL,
	[start_time] [datetime2](7) NULL,
	[end_time] [datetime2](7) NULL,
	[score] [decimal](5, 2) NULL,
	[passing_score] [decimal](5, 2) NULL,
	[time_taken] [int] NULL,
	[is_completed] [bit] NULL,
	[attempt_number] [int] NULL,
	[created_at] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[attempt_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentQuizPerformanceStatistics]    Script Date: 16/01/2025 8:31:03 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentQuizPerformanceStatistics](
	[stat_id] [int] IDENTITY(1,1) NOT NULL,
	[student_id] [int] NULL,
	[quiz_id] [int] NULL,
	[total_attempts] [int] NULL,
	[highest_score] [decimal](5, 2) NULL,
	[average_score] [decimal](5, 2) NULL,
	[total_time_spent] [int] NULL,
	[last_attempt_date] [datetime2](7) NULL,
	[created_at] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[stat_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentStudyPlan]    Script Date: 16/01/2025 8:31:03 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentStudyPlan](
	[student_plan_id] [int] IDENTITY(1,1) NOT NULL,
	[student_id] [int] NULL,
	[course_id] [int] NULL,
	[course_plan_id] [int] NULL,
	[start_date] [datetime2](6) NULL,
	[status] [nvarchar](20) NULL,
	[previous_plan_id] [int] NULL,
	[switch_date] [datetime2](7) NULL,
	[created_at] [datetime2](7) NULL,
	[updated_at] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[student_plan_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentSubscription]    Script Date: 16/01/2025 8:31:03 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentSubscription](
	[subscription_id] [int] IDENTITY(1,1) NOT NULL,
	[student_id] [int] NULL,
	[plan_id] [int] NULL,
	[start_date] [datetime2](6) NULL,
	[end_date] [datetime2](6) NULL,
	[is_active] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[subscription_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentVocabularyProgress]    Script Date: 16/01/2025 8:31:03 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentVocabularyProgress](
	[progress_id] [int] IDENTITY(1,1) NOT NULL,
	[student_id] [int] NULL,
	[vocab_id] [int] NULL,
	[is_learned] [bit] NULL,
	[last_studied] [datetime2](7) NULL,
	[study_count] [int] NULL,
	[total_study_time] [int] NULL,
	[starred] [bit] NULL,
	[created_at] [datetime2](7) NULL,
	[updated_at] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[progress_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudyPlan]    Script Date: 16/01/2025 8:31:03 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudyPlan](
	[plan_id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](255) NULL,
	[description] [nvarchar](max) NULL,
	[hours_per_day] [int] NULL,
	[total_months] [int] NULL,
	[is_active] [bit] NULL,
	[created_at] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[plan_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubscriptionPlan]    Script Date: 16/01/2025 8:31:03 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubscriptionPlan](
	[plan_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NULL,
	[description] [nvarchar](max) NULL,
	[price] [decimal](10, 2) NULL,
	[benefits] [nvarchar](max) NULL,
	[duration_days] [int] NULL,
	[is_active] [bit] NULL,
	[create_at] [datetime2](7) NULL,
	[created_at] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[plan_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SystemFlashCardSet]    Script Date: 16/01/2025 8:31:03 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemFlashCardSet](
	[set_id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](255) NULL,
	[description] [nvarchar](max) NULL,
	[domain_id] [int] NULL,
	[difficulty_level_id] [int] NULL,
	[is_public] [bit] NULL,
	[is_premium] [bit] NULL,
	[created_at] [datetime2](7) NULL,
	[updated_at] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[set_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 16/01/2025 8:31:03 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NULL,
	[email] [nvarchar](100) NULL,
	[password] [nvarchar](255) NULL,
	[uid] [nvarchar](255) NULL,
	[is_active] [bit] NULL,
	[created_at] [datetime2](6) NULL,
	[last_login] [datetime2](6) NULL,
	[role_id] [int] NULL,
	[profile_img] [nvarchar](255) NULL,
 CONSTRAINT [PK__User__B9BE370F12B797E1] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserActivityLog]    Script Date: 16/01/2025 8:31:03 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserActivityLog](
	[log_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[activity_type] [nvarchar](100) NULL,
	[content_type] [nvarchar](50) NULL,
	[content_id] [int] NULL,
	[description] [nvarchar](max) NULL,
	[ip_address] [nvarchar](45) NULL,
	[created_at] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[log_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([role_id], [rolename]) VALUES (1, N'Administrator')
INSERT [dbo].[Role] ([role_id], [rolename]) VALUES (2, N'Content Manager')
INSERT [dbo].[Role] ([role_id], [rolename]) VALUES (3, N'Student')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([user_id], [username], [email], [password], [uid], [is_active], [created_at], [last_login], [role_id], [profile_img]) VALUES (1, N'Admin', N'admin@gmail.com', N'5', NULL, 1, CAST(N'2025-01-14T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[User] ([user_id], [username], [email], [password], [uid], [is_active], [created_at], [last_login], [role_id], [profile_img]) VALUES (2, N'Steve', N'steve@gmail.com', N'5', NULL, 1, CAST(N'2025-01-14T00:00:00.0000000' AS DateTime2), NULL, 2, NULL)
INSERT [dbo].[User] ([user_id], [username], [email], [password], [uid], [is_active], [created_at], [last_login], [role_id], [profile_img]) VALUES (3, N'Kiam', N'kiam@gmail.com', N'5', NULL, 1, CAST(N'2025-01-14T00:00:00.0000000' AS DateTime2), NULL, 2, NULL)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Achievem__357D4CF9C7AD8659]    Script Date: 16/01/2025 8:31:03 CH ******/
ALTER TABLE [dbo].[Achievement] ADD UNIQUE NONCLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Difficul__357D4CF99604CA30]    Script Date: 16/01/2025 8:31:03 CH ******/
ALTER TABLE [dbo].[DifficultyLevel] ADD UNIQUE NONCLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Domain__357D4CF9934C3509]    Script Date: 16/01/2025 8:31:03 CH ******/
ALTER TABLE [dbo].[Domain] ADD UNIQUE NONCLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__User__AB6E61641DEAC389]    Script Date: 16/01/2025 8:31:03 CH ******/
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [UQ__User__AB6E61641DEAC389] UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__User__F3DBC572D4BD53E6]    Script Date: 16/01/2025 8:31:03 CH ******/
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [UQ__User__F3DBC572D4BD53E6] UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Achievement] ADD  DEFAULT ((1)) FOR [is_active]
GO
ALTER TABLE [dbo].[Achievement] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[AuthToken] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[AuthToken] ADD  DEFAULT ((1)) FOR [is_active]
GO
ALTER TABLE [dbo].[Course] ADD  DEFAULT ((0)) FOR [is_public]
GO
ALTER TABLE [dbo].[Course] ADD  DEFAULT ((0)) FOR [is_premium]
GO
ALTER TABLE [dbo].[Course] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[CourseStudyPlan] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[DifficultyLevel] ADD  DEFAULT ((1)) FOR [is_active]
GO
ALTER TABLE [dbo].[DifficultyLevel] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[Domain] ADD  DEFAULT ((1)) FOR [is_active]
GO
ALTER TABLE [dbo].[Domain] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[FlashCard] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[FlashCard] ADD  DEFAULT (getdate()) FOR [last_updated]
GO
ALTER TABLE [dbo].[FolderItem] ADD  DEFAULT (getdate()) FOR [added_at]
GO
ALTER TABLE [dbo].[LearningPath] ADD  DEFAULT ((0)) FOR [is_public]
GO
ALTER TABLE [dbo].[LearningPath] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[LearningResource] ADD  DEFAULT ((0)) FOR [is_premium]
GO
ALTER TABLE [dbo].[LearningResource] ADD  DEFAULT ((1)) FOR [is_public]
GO
ALTER TABLE [dbo].[LearningResource] ADD  DEFAULT ((1)) FOR [is_active]
GO
ALTER TABLE [dbo].[LearningResource] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[LearningResource] ADD  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[Lesson] ADD  DEFAULT ((100)) FOR [min_completion_percentage]
GO
ALTER TABLE [dbo].[Lesson] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[LessonResource] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[PaymentHistory] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[PaymentMethod] ADD  DEFAULT ((1)) FOR [is_active]
GO
ALTER TABLE [dbo].[PaymentMethod] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[PaymentTransaction] ADD  DEFAULT ('VND') FOR [currency]
GO
ALTER TABLE [dbo].[PaymentTransaction] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[Quiz] ADD  DEFAULT ((0)) FOR [is_public]
GO
ALTER TABLE [dbo].[Quiz] ADD  DEFAULT ((1)) FOR [is_active]
GO
ALTER TABLE [dbo].[Quiz] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[Quiz] ADD  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[QuizAnswerOption] ADD  DEFAULT ((0)) FOR [is_correct]
GO
ALTER TABLE [dbo].[QuizAnswerOption] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[QuizAnswerResponse] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[QuizQuestion] ADD  DEFAULT ((1)) FOR [points]
GO
ALTER TABLE [dbo].[QuizQuestion] ADD  DEFAULT ((1)) FOR [is_required]
GO
ALTER TABLE [dbo].[QuizQuestion] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[QuizQuestion] ADD  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[ResourceType] ADD  DEFAULT ((1)) FOR [is_active]
GO
ALTER TABLE [dbo].[ResourceType] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[Student] ADD  DEFAULT ((60)) FOR [daily_goal_minutes]
GO
ALTER TABLE [dbo].[Student] ADD  DEFAULT ((0)) FOR [reminder_enabled]
GO
ALTER TABLE [dbo].[Student] ADD  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[StudentAchievementProgress] ADD  DEFAULT ((0)) FOR [current_value]
GO
ALTER TABLE [dbo].[StudentAchievementProgress] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[StudentCourseProgress] ADD  DEFAULT ((0)) FOR [completion_percentage]
GO
ALTER TABLE [dbo].[StudentCourseProgress] ADD  DEFAULT ('not_started') FOR [completion_status]
GO
ALTER TABLE [dbo].[StudentCourseProgress] ADD  DEFAULT ((0)) FOR [completed_lessons]
GO
ALTER TABLE [dbo].[StudentCourseProgress] ADD  DEFAULT ((0)) FOR [total_study_time]
GO
ALTER TABLE [dbo].[StudentCourseProgress] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[StudentCourseProgress] ADD  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[StudentCourseRating] ADD  DEFAULT ((0)) FOR [is_verified]
GO
ALTER TABLE [dbo].[StudentCourseRating] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[StudentCourseRating] ADD  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[StudentDailyLearningLog] ADD  DEFAULT ((0)) FOR [study_time]
GO
ALTER TABLE [dbo].[StudentDailyLearningLog] ADD  DEFAULT ((0)) FOR [completed_lessons]
GO
ALTER TABLE [dbo].[StudentDailyLearningLog] ADD  DEFAULT ((0)) FOR [completed_courses]
GO
ALTER TABLE [dbo].[StudentDailyLearningLog] ADD  DEFAULT ((0)) FOR [quiz_attempts]
GO
ALTER TABLE [dbo].[StudentDailyLearningLog] ADD  DEFAULT ((0)) FOR [points_earned]
GO
ALTER TABLE [dbo].[StudentDailyLearningLog] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[StudentFavorite] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[StudentFlashCardSet] ADD  DEFAULT ((0)) FOR [is_public]
GO
ALTER TABLE [dbo].[StudentFlashCardSet] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[StudentFlashCardSet] ADD  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[StudentFlashCardSetProgress] ADD  DEFAULT ((0)) FOR [completion_percentage]
GO
ALTER TABLE [dbo].[StudentFlashCardSetProgress] ADD  DEFAULT ((0)) FOR [study_count]
GO
ALTER TABLE [dbo].[StudentFlashCardSetProgress] ADD  DEFAULT ((0)) FOR [total_study_time]
GO
ALTER TABLE [dbo].[StudentFlashCardSetProgress] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[StudentFlashCardSetProgress] ADD  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[StudentFolder] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[StudentFolder] ADD  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[StudentLearningStatistics] ADD  DEFAULT ((0)) FOR [total_study_time]
GO
ALTER TABLE [dbo].[StudentLearningStatistics] ADD  DEFAULT ((0)) FOR [total_completed_courses]
GO
ALTER TABLE [dbo].[StudentLearningStatistics] ADD  DEFAULT ((0)) FOR [total_completed_lessons]
GO
ALTER TABLE [dbo].[StudentLearningStatistics] ADD  DEFAULT ((0)) FOR [total_completed_quizzes]
GO
ALTER TABLE [dbo].[StudentLearningStatistics] ADD  DEFAULT ((0)) FOR [active_days_count]
GO
ALTER TABLE [dbo].[StudentLearningStatistics] ADD  DEFAULT ((0)) FOR [total_achievements_unlocked]
GO
ALTER TABLE [dbo].[StudentLearningStatistics] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[StudentLearningStatistics] ADD  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[StudentLessonProgress] ADD  DEFAULT ((0)) FOR [completion_percentage]
GO
ALTER TABLE [dbo].[StudentLessonProgress] ADD  DEFAULT ('not_started') FOR [completion_status]
GO
ALTER TABLE [dbo].[StudentLessonProgress] ADD  DEFAULT ((0)) FOR [completed_resources]
GO
ALTER TABLE [dbo].[StudentLessonProgress] ADD  DEFAULT ((0)) FOR [total_study_time]
GO
ALTER TABLE [dbo].[StudentLessonResourceProgress] ADD  DEFAULT ('not_started') FOR [completion_status]
GO
ALTER TABLE [dbo].[StudentLessonResourceProgress] ADD  DEFAULT ((0)) FOR [total_time_spent]
GO
ALTER TABLE [dbo].[StudentLessonResourceProgress] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[StudentLessonResourceProgress] ADD  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[StudentQuizAttempt] ADD  DEFAULT ((0)) FOR [is_completed]
GO
ALTER TABLE [dbo].[StudentQuizAttempt] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[StudentQuizPerformanceStatistics] ADD  DEFAULT ((0)) FOR [total_attempts]
GO
ALTER TABLE [dbo].[StudentQuizPerformanceStatistics] ADD  DEFAULT ((0)) FOR [highest_score]
GO
ALTER TABLE [dbo].[StudentQuizPerformanceStatistics] ADD  DEFAULT ((0)) FOR [average_score]
GO
ALTER TABLE [dbo].[StudentQuizPerformanceStatistics] ADD  DEFAULT ((0)) FOR [total_time_spent]
GO
ALTER TABLE [dbo].[StudentQuizPerformanceStatistics] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[StudentStudyPlan] ADD  DEFAULT ('active') FOR [status]
GO
ALTER TABLE [dbo].[StudentStudyPlan] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[StudentStudyPlan] ADD  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[StudentSubscription] ADD  DEFAULT ((1)) FOR [is_active]
GO
ALTER TABLE [dbo].[StudentVocabularyProgress] ADD  DEFAULT ((0)) FOR [is_learned]
GO
ALTER TABLE [dbo].[StudentVocabularyProgress] ADD  DEFAULT ((0)) FOR [study_count]
GO
ALTER TABLE [dbo].[StudentVocabularyProgress] ADD  DEFAULT ((0)) FOR [total_study_time]
GO
ALTER TABLE [dbo].[StudentVocabularyProgress] ADD  DEFAULT ((0)) FOR [starred]
GO
ALTER TABLE [dbo].[StudentVocabularyProgress] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[StudentVocabularyProgress] ADD  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[StudyPlan] ADD  DEFAULT ((1)) FOR [is_active]
GO
ALTER TABLE [dbo].[StudyPlan] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[SubscriptionPlan] ADD  DEFAULT ((1)) FOR [is_active]
GO
ALTER TABLE [dbo].[SubscriptionPlan] ADD  DEFAULT (getdate()) FOR [create_at]
GO
ALTER TABLE [dbo].[SystemFlashCardSet] ADD  DEFAULT ((0)) FOR [is_public]
GO
ALTER TABLE [dbo].[SystemFlashCardSet] ADD  DEFAULT ((0)) FOR [is_premium]
GO
ALTER TABLE [dbo].[SystemFlashCardSet] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[SystemFlashCardSet] ADD  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF__User__is_active__3F466844]  DEFAULT ((1)) FOR [is_active]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF__User__role_id__412EB0B6]  DEFAULT ((0)) FOR [role_id]
GO
ALTER TABLE [dbo].[UserActivityLog] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[AuthToken]  WITH CHECK ADD  CONSTRAINT [FK_AuthToken_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[AuthToken] CHECK CONSTRAINT [FK_AuthToken_User]
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_Creator] FOREIGN KEY([creator_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_Creator]
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_DifficultyLevel] FOREIGN KEY([difficulty_level_id])
REFERENCES [dbo].[DifficultyLevel] ([level_id])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_DifficultyLevel]
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_Domain] FOREIGN KEY([domain_id])
REFERENCES [dbo].[Domain] ([domain_id])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_Domain]
GO
ALTER TABLE [dbo].[CourseStudyPlan]  WITH CHECK ADD FOREIGN KEY([course_id])
REFERENCES [dbo].[Course] ([course_id])
GO
ALTER TABLE [dbo].[CourseStudyPlan]  WITH CHECK ADD FOREIGN KEY([plan_id])
REFERENCES [dbo].[StudyPlan] ([plan_id])
GO
ALTER TABLE [dbo].[Domain]  WITH CHECK ADD FOREIGN KEY([parent_domain_id])
REFERENCES [dbo].[Domain] ([domain_id])
GO
ALTER TABLE [dbo].[FlashCard]  WITH CHECK ADD  CONSTRAINT [FK_FlashCard_StudentSet] FOREIGN KEY([set_id])
REFERENCES [dbo].[StudentFlashCardSet] ([set_id])
GO
ALTER TABLE [dbo].[FlashCard] CHECK CONSTRAINT [FK_FlashCard_StudentSet]
GO
ALTER TABLE [dbo].[FlashCard]  WITH CHECK ADD  CONSTRAINT [FK_FlashCard_SystemSet] FOREIGN KEY([set_id])
REFERENCES [dbo].[SystemFlashCardSet] ([set_id])
GO
ALTER TABLE [dbo].[FlashCard] CHECK CONSTRAINT [FK_FlashCard_SystemSet]
GO
ALTER TABLE [dbo].[FlashCard]  WITH CHECK ADD  CONSTRAINT [FK1be7hl00oag8pi39t96np0hhx] FOREIGN KEY([creator_id])
REFERENCES [dbo].[Student] ([student_id])
GO
ALTER TABLE [dbo].[FlashCard] CHECK CONSTRAINT [FK1be7hl00oag8pi39t96np0hhx]
GO
ALTER TABLE [dbo].[FlashCard]  WITH CHECK ADD  CONSTRAINT [FKjuo9pha581gv31c0ma8qjyq8w] FOREIGN KEY([set_id])
REFERENCES [dbo].[FlashCard] ([vocab_id])
GO
ALTER TABLE [dbo].[FlashCard] CHECK CONSTRAINT [FKjuo9pha581gv31c0ma8qjyq8w]
GO
ALTER TABLE [dbo].[FlashCard]  WITH CHECK ADD  CONSTRAINT [FKngtqeid56rbmhupk76vhkvb3] FOREIGN KEY([resource_id])
REFERENCES [dbo].[LearningResource] ([resource_id])
GO
ALTER TABLE [dbo].[FlashCard] CHECK CONSTRAINT [FKngtqeid56rbmhupk76vhkvb3]
GO
ALTER TABLE [dbo].[FlashCard]  WITH CHECK ADD  CONSTRAINT [FKr9x51utudfoinwpssow66pm0] FOREIGN KEY([domain_id])
REFERENCES [dbo].[Domain] ([domain_id])
GO
ALTER TABLE [dbo].[FlashCard] CHECK CONSTRAINT [FKr9x51utudfoinwpssow66pm0]
GO
ALTER TABLE [dbo].[FlashCard]  WITH CHECK ADD  CONSTRAINT [FKri56js4se09elnpr2un3pugj8] FOREIGN KEY([difficulty_level_id])
REFERENCES [dbo].[DifficultyLevel] ([level_id])
GO
ALTER TABLE [dbo].[FlashCard] CHECK CONSTRAINT [FKri56js4se09elnpr2un3pugj8]
GO
ALTER TABLE [dbo].[FolderItem]  WITH CHECK ADD  CONSTRAINT [FK_FolderItem_Folder] FOREIGN KEY([folder_id])
REFERENCES [dbo].[StudentFolder] ([folder_id])
GO
ALTER TABLE [dbo].[FolderItem] CHECK CONSTRAINT [FK_FolderItem_Folder]
GO
ALTER TABLE [dbo].[FolderItem]  WITH CHECK ADD  CONSTRAINT [FK_FolderItem_Set] FOREIGN KEY([set_id])
REFERENCES [dbo].[StudentFlashCardSet] ([set_id])
GO
ALTER TABLE [dbo].[FolderItem] CHECK CONSTRAINT [FK_FolderItem_Set]
GO
ALTER TABLE [dbo].[FolderItem]  WITH CHECK ADD  CONSTRAINT [FK3vhshf7yd2635h4l50nsfuug7] FOREIGN KEY([set_id])
REFERENCES [dbo].[FlashCard] ([vocab_id])
GO
ALTER TABLE [dbo].[FolderItem] CHECK CONSTRAINT [FK3vhshf7yd2635h4l50nsfuug7]
GO
ALTER TABLE [dbo].[LearningPath]  WITH CHECK ADD  CONSTRAINT [FK_LearningPath_Creator] FOREIGN KEY([creator_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[LearningPath] CHECK CONSTRAINT [FK_LearningPath_Creator]
GO
ALTER TABLE [dbo].[LearningPath]  WITH CHECK ADD  CONSTRAINT [FK_LearningPath_Domain] FOREIGN KEY([domain_id])
REFERENCES [dbo].[Domain] ([domain_id])
GO
ALTER TABLE [dbo].[LearningPath] CHECK CONSTRAINT [FK_LearningPath_Domain]
GO
ALTER TABLE [dbo].[LearningResource]  WITH CHECK ADD  CONSTRAINT [FK__LearningR__creat__39237A9A] FOREIGN KEY([creator_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[LearningResource] CHECK CONSTRAINT [FK__LearningR__creat__39237A9A]
GO
ALTER TABLE [dbo].[LearningResource]  WITH CHECK ADD FOREIGN KEY([domain_id])
REFERENCES [dbo].[Domain] ([domain_id])
GO
ALTER TABLE [dbo].[LearningResource]  WITH CHECK ADD FOREIGN KEY([resource_type_id])
REFERENCES [dbo].[ResourceType] ([type_id])
GO
ALTER TABLE [dbo].[Lesson]  WITH CHECK ADD  CONSTRAINT [FK_Lesson_StudyPlan] FOREIGN KEY([plan_id])
REFERENCES [dbo].[StudyPlan] ([plan_id])
GO
ALTER TABLE [dbo].[Lesson] CHECK CONSTRAINT [FK_Lesson_StudyPlan]
GO
ALTER TABLE [dbo].[LessonResource]  WITH CHECK ADD FOREIGN KEY([lesson_id])
REFERENCES [dbo].[Lesson] ([lesson_id])
GO
ALTER TABLE [dbo].[LessonResource]  WITH CHECK ADD FOREIGN KEY([quiz_id])
REFERENCES [dbo].[Quiz] ([quiz_id])
GO
ALTER TABLE [dbo].[LessonResource]  WITH CHECK ADD FOREIGN KEY([resource_id])
REFERENCES [dbo].[LearningResource] ([resource_id])
GO
ALTER TABLE [dbo].[LessonResource]  WITH CHECK ADD FOREIGN KEY([set_id])
REFERENCES [dbo].[SystemFlashCardSet] ([set_id])
GO
ALTER TABLE [dbo].[PathCourse]  WITH CHECK ADD  CONSTRAINT [FK_PathCourse_Course] FOREIGN KEY([course_id])
REFERENCES [dbo].[Course] ([course_id])
GO
ALTER TABLE [dbo].[PathCourse] CHECK CONSTRAINT [FK_PathCourse_Course]
GO
ALTER TABLE [dbo].[PathCourse]  WITH CHECK ADD  CONSTRAINT [FK_PathCourse_Path] FOREIGN KEY([path_id])
REFERENCES [dbo].[LearningPath] ([path_id])
GO
ALTER TABLE [dbo].[PathCourse] CHECK CONSTRAINT [FK_PathCourse_Path]
GO
ALTER TABLE [dbo].[PaymentHistory]  WITH CHECK ADD  CONSTRAINT [FK__PaymentHi__admin__345EC57D] FOREIGN KEY([admin_confirmed_by])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[PaymentHistory] CHECK CONSTRAINT [FK__PaymentHi__admin__345EC57D]
GO
ALTER TABLE [dbo].[PaymentHistory]  WITH CHECK ADD FOREIGN KEY([transaction_id])
REFERENCES [dbo].[PaymentTransaction] ([transaction_id])
GO
ALTER TABLE [dbo].[PaymentTransaction]  WITH CHECK ADD FOREIGN KEY([method_id])
REFERENCES [dbo].[PaymentMethod] ([method_id])
GO
ALTER TABLE [dbo].[PaymentTransaction]  WITH CHECK ADD FOREIGN KEY([subscription_id])
REFERENCES [dbo].[StudentSubscription] ([subscription_id])
GO
ALTER TABLE [dbo].[Quiz]  WITH CHECK ADD  CONSTRAINT [FK__Quiz__creator_id__1F63A897] FOREIGN KEY([creator_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[Quiz] CHECK CONSTRAINT [FK__Quiz__creator_id__1F63A897]
GO
ALTER TABLE [dbo].[Quiz]  WITH CHECK ADD FOREIGN KEY([difficulty_level_id])
REFERENCES [dbo].[DifficultyLevel] ([level_id])
GO
ALTER TABLE [dbo].[Quiz]  WITH CHECK ADD FOREIGN KEY([domain_id])
REFERENCES [dbo].[Domain] ([domain_id])
GO
ALTER TABLE [dbo].[QuizAnswerOption]  WITH CHECK ADD FOREIGN KEY([question_id])
REFERENCES [dbo].[QuizQuestion] ([question_id])
GO
ALTER TABLE [dbo].[QuizAnswerResponse]  WITH CHECK ADD FOREIGN KEY([attempt_id])
REFERENCES [dbo].[StudentQuizAttempt] ([attempt_id])
GO
ALTER TABLE [dbo].[QuizAnswerResponse]  WITH CHECK ADD FOREIGN KEY([question_id])
REFERENCES [dbo].[QuizQuestion] ([question_id])
GO
ALTER TABLE [dbo].[QuizAnswerResponse]  WITH CHECK ADD FOREIGN KEY([selected_option_id])
REFERENCES [dbo].[QuizAnswerOption] ([option_id])
GO
ALTER TABLE [dbo].[QuizQuestion]  WITH CHECK ADD FOREIGN KEY([quiz_id])
REFERENCES [dbo].[Quiz] ([quiz_id])
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_User]
GO
ALTER TABLE [dbo].[StudentAchievement]  WITH CHECK ADD  CONSTRAINT [FK_StudentAchievement_Achievement] FOREIGN KEY([achievement_id])
REFERENCES [dbo].[Achievement] ([achievement_id])
GO
ALTER TABLE [dbo].[StudentAchievement] CHECK CONSTRAINT [FK_StudentAchievement_Achievement]
GO
ALTER TABLE [dbo].[StudentAchievement]  WITH CHECK ADD  CONSTRAINT [FK_StudentAchievement_Student] FOREIGN KEY([student_id])
REFERENCES [dbo].[Student] ([student_id])
GO
ALTER TABLE [dbo].[StudentAchievement] CHECK CONSTRAINT [FK_StudentAchievement_Student]
GO
ALTER TABLE [dbo].[StudentAchievementProgress]  WITH CHECK ADD  CONSTRAINT [FK_AchievementProgress_Achievement] FOREIGN KEY([achievement_id])
REFERENCES [dbo].[Achievement] ([achievement_id])
GO
ALTER TABLE [dbo].[StudentAchievementProgress] CHECK CONSTRAINT [FK_AchievementProgress_Achievement]
GO
ALTER TABLE [dbo].[StudentAchievementProgress]  WITH CHECK ADD  CONSTRAINT [FK_AchievementProgress_Student] FOREIGN KEY([student_id])
REFERENCES [dbo].[Student] ([student_id])
GO
ALTER TABLE [dbo].[StudentAchievementProgress] CHECK CONSTRAINT [FK_AchievementProgress_Student]
GO
ALTER TABLE [dbo].[StudentAchievementProgress]  WITH CHECK ADD  CONSTRAINT [FK13c6c9ge4qolyjpskx7v6lcxo] FOREIGN KEY([course_id])
REFERENCES [dbo].[Course] ([course_id])
GO
ALTER TABLE [dbo].[StudentAchievementProgress] CHECK CONSTRAINT [FK13c6c9ge4qolyjpskx7v6lcxo]
GO
ALTER TABLE [dbo].[StudentAchievementProgress]  WITH CHECK ADD  CONSTRAINT [FKn814ehwgbqwpgbsgktl80vr8r] FOREIGN KEY([transaction_id])
REFERENCES [dbo].[PaymentTransaction] ([transaction_id])
GO
ALTER TABLE [dbo].[StudentAchievementProgress] CHECK CONSTRAINT [FKn814ehwgbqwpgbsgktl80vr8r]
GO
ALTER TABLE [dbo].[StudentAchievementProgress]  WITH CHECK ADD  CONSTRAINT [FKt7wcl5eg8dsnul0nw54pqnjuw] FOREIGN KEY([current_lesson_id])
REFERENCES [dbo].[Lesson] ([lesson_id])
GO
ALTER TABLE [dbo].[StudentAchievementProgress] CHECK CONSTRAINT [FKt7wcl5eg8dsnul0nw54pqnjuw]
GO
ALTER TABLE [dbo].[StudentAchievementProgress]  WITH CHECK ADD  CONSTRAINT [FKxbu7y0wp2lod5b00mryiktd7] FOREIGN KEY([admin_confirmed_by])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[StudentAchievementProgress] CHECK CONSTRAINT [FKxbu7y0wp2lod5b00mryiktd7]
GO
ALTER TABLE [dbo].[StudentCourseProgress]  WITH CHECK ADD FOREIGN KEY([course_id])
REFERENCES [dbo].[Course] ([course_id])
GO
ALTER TABLE [dbo].[StudentCourseProgress]  WITH CHECK ADD FOREIGN KEY([current_lesson_id])
REFERENCES [dbo].[Lesson] ([lesson_id])
GO
ALTER TABLE [dbo].[StudentCourseProgress]  WITH CHECK ADD FOREIGN KEY([student_id])
REFERENCES [dbo].[Student] ([student_id])
GO
ALTER TABLE [dbo].[StudentCourseRating]  WITH CHECK ADD FOREIGN KEY([course_id])
REFERENCES [dbo].[Course] ([course_id])
GO
ALTER TABLE [dbo].[StudentCourseRating]  WITH CHECK ADD FOREIGN KEY([student_id])
REFERENCES [dbo].[Student] ([student_id])
GO
ALTER TABLE [dbo].[StudentDailyLearningLog]  WITH CHECK ADD FOREIGN KEY([student_id])
REFERENCES [dbo].[Student] ([student_id])
GO
ALTER TABLE [dbo].[StudentFavorite]  WITH CHECK ADD FOREIGN KEY([resource_id])
REFERENCES [dbo].[LearningResource] ([resource_id])
GO
ALTER TABLE [dbo].[StudentFavorite]  WITH CHECK ADD FOREIGN KEY([student_id])
REFERENCES [dbo].[Student] ([student_id])
GO
ALTER TABLE [dbo].[StudentFlashCardSet]  WITH CHECK ADD  CONSTRAINT [FK_StudentSet_DifficultyLevel] FOREIGN KEY([difficulty_level_id])
REFERENCES [dbo].[DifficultyLevel] ([level_id])
GO
ALTER TABLE [dbo].[StudentFlashCardSet] CHECK CONSTRAINT [FK_StudentSet_DifficultyLevel]
GO
ALTER TABLE [dbo].[StudentFlashCardSet]  WITH CHECK ADD  CONSTRAINT [FK_StudentSet_Domain] FOREIGN KEY([domain_id])
REFERENCES [dbo].[Domain] ([domain_id])
GO
ALTER TABLE [dbo].[StudentFlashCardSet] CHECK CONSTRAINT [FK_StudentSet_Domain]
GO
ALTER TABLE [dbo].[StudentFlashCardSet]  WITH CHECK ADD  CONSTRAINT [FK_StudentSet_Resource] FOREIGN KEY([resource_id])
REFERENCES [dbo].[LearningResource] ([resource_id])
GO
ALTER TABLE [dbo].[StudentFlashCardSet] CHECK CONSTRAINT [FK_StudentSet_Resource]
GO
ALTER TABLE [dbo].[StudentFlashCardSet]  WITH CHECK ADD  CONSTRAINT [FK_StudentSet_Student] FOREIGN KEY([creator_id])
REFERENCES [dbo].[Student] ([student_id])
GO
ALTER TABLE [dbo].[StudentFlashCardSet] CHECK CONSTRAINT [FK_StudentSet_Student]
GO
ALTER TABLE [dbo].[StudentFlashCardSetProgress]  WITH CHECK ADD FOREIGN KEY([set_id])
REFERENCES [dbo].[StudentFlashCardSet] ([set_id])
GO
ALTER TABLE [dbo].[StudentFlashCardSetProgress]  WITH CHECK ADD FOREIGN KEY([set_id])
REFERENCES [dbo].[SystemFlashCardSet] ([set_id])
GO
ALTER TABLE [dbo].[StudentFlashCardSetProgress]  WITH CHECK ADD FOREIGN KEY([student_id])
REFERENCES [dbo].[Student] ([student_id])
GO
ALTER TABLE [dbo].[StudentFlashCardSetProgress]  WITH CHECK ADD  CONSTRAINT [FKkum16mjr0257ye0dvyp75ahvp] FOREIGN KEY([set_id])
REFERENCES [dbo].[FlashCard] ([vocab_id])
GO
ALTER TABLE [dbo].[StudentFlashCardSetProgress] CHECK CONSTRAINT [FKkum16mjr0257ye0dvyp75ahvp]
GO
ALTER TABLE [dbo].[StudentFolder]  WITH CHECK ADD  CONSTRAINT [FK_StudentFolder_Student] FOREIGN KEY([student_id])
REFERENCES [dbo].[Student] ([student_id])
GO
ALTER TABLE [dbo].[StudentFolder] CHECK CONSTRAINT [FK_StudentFolder_Student]
GO
ALTER TABLE [dbo].[StudentLearningStatistics]  WITH CHECK ADD FOREIGN KEY([student_id])
REFERENCES [dbo].[Student] ([student_id])
GO
ALTER TABLE [dbo].[StudentLessonProgress]  WITH CHECK ADD FOREIGN KEY([lesson_id])
REFERENCES [dbo].[Lesson] ([lesson_id])
GO
ALTER TABLE [dbo].[StudentLessonProgress]  WITH CHECK ADD FOREIGN KEY([student_id])
REFERENCES [dbo].[Student] ([student_id])
GO
ALTER TABLE [dbo].[StudentLessonResourceProgress]  WITH CHECK ADD FOREIGN KEY([lesson_resource_id])
REFERENCES [dbo].[LessonResource] ([lesson_resource_id])
GO
ALTER TABLE [dbo].[StudentLessonResourceProgress]  WITH CHECK ADD FOREIGN KEY([student_id])
REFERENCES [dbo].[Student] ([student_id])
GO
ALTER TABLE [dbo].[StudentQuizAttempt]  WITH CHECK ADD FOREIGN KEY([quiz_id])
REFERENCES [dbo].[Quiz] ([quiz_id])
GO
ALTER TABLE [dbo].[StudentQuizAttempt]  WITH CHECK ADD FOREIGN KEY([student_id])
REFERENCES [dbo].[Student] ([student_id])
GO
ALTER TABLE [dbo].[StudentQuizPerformanceStatistics]  WITH CHECK ADD FOREIGN KEY([quiz_id])
REFERENCES [dbo].[Quiz] ([quiz_id])
GO
ALTER TABLE [dbo].[StudentQuizPerformanceStatistics]  WITH CHECK ADD FOREIGN KEY([student_id])
REFERENCES [dbo].[Student] ([student_id])
GO
ALTER TABLE [dbo].[StudentStudyPlan]  WITH CHECK ADD FOREIGN KEY([course_id])
REFERENCES [dbo].[Course] ([course_id])
GO
ALTER TABLE [dbo].[StudentStudyPlan]  WITH CHECK ADD FOREIGN KEY([course_plan_id])
REFERENCES [dbo].[CourseStudyPlan] ([course_plan_id])
GO
ALTER TABLE [dbo].[StudentStudyPlan]  WITH CHECK ADD FOREIGN KEY([previous_plan_id])
REFERENCES [dbo].[CourseStudyPlan] ([course_plan_id])
GO
ALTER TABLE [dbo].[StudentStudyPlan]  WITH CHECK ADD FOREIGN KEY([student_id])
REFERENCES [dbo].[Student] ([student_id])
GO
ALTER TABLE [dbo].[StudentSubscription]  WITH CHECK ADD FOREIGN KEY([plan_id])
REFERENCES [dbo].[SubscriptionPlan] ([plan_id])
GO
ALTER TABLE [dbo].[StudentSubscription]  WITH CHECK ADD FOREIGN KEY([student_id])
REFERENCES [dbo].[Student] ([student_id])
GO
ALTER TABLE [dbo].[StudentVocabularyProgress]  WITH CHECK ADD FOREIGN KEY([student_id])
REFERENCES [dbo].[Student] ([student_id])
GO
ALTER TABLE [dbo].[StudentVocabularyProgress]  WITH CHECK ADD FOREIGN KEY([vocab_id])
REFERENCES [dbo].[FlashCard] ([vocab_id])
GO
ALTER TABLE [dbo].[SystemFlashCardSet]  WITH CHECK ADD  CONSTRAINT [FK_SystemSet_DifficultyLevel] FOREIGN KEY([difficulty_level_id])
REFERENCES [dbo].[DifficultyLevel] ([level_id])
GO
ALTER TABLE [dbo].[SystemFlashCardSet] CHECK CONSTRAINT [FK_SystemSet_DifficultyLevel]
GO
ALTER TABLE [dbo].[SystemFlashCardSet]  WITH CHECK ADD  CONSTRAINT [FK_SystemSet_Domain] FOREIGN KEY([domain_id])
REFERENCES [dbo].[Domain] ([domain_id])
GO
ALTER TABLE [dbo].[SystemFlashCardSet] CHECK CONSTRAINT [FK_SystemSet_Domain]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([role_id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
ALTER TABLE [dbo].[UserActivityLog]  WITH CHECK ADD  CONSTRAINT [FK__UserActiv__user___3552E9B6] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[UserActivityLog] CHECK CONSTRAINT [FK__UserActiv__user___3552E9B6]
GO
USE [master]
GO
ALTER DATABASE [TechNihongo_V1] SET  READ_WRITE 
GO
