# KioskMeet - A Webkiosk Clone

KioskMeet is a project aimed at replicating the functionalities of our college's [Webkiosk](https://webkiosk.jiit.ac.in). It serves as a platform for both teachers and students to manage courses, subjects, faculty, attendance, disciplinary violations, marks, and CGPA. Additionally, it features a video calling application, developed from scratch, to reduce external dependencies for online classes.

![image](https://github.com/aryanploxxx/KioskMeet/assets/94754702/9035bfd8-c436-46ec-9ab4-7eaefbb38d76)


## Table of Contents

- [Description](#description)
- [Database Overview](#database-overview)
- [Tech Stack](#tech-stack)
- [Features](#features)
- [Contributors](#contributors)
- [Setup](#setup)

## Description

KioskMeet is a Webkiosk clone, aiming to provide functionality similar to our college's [Webkiosk](https://webkiosk.jiit.ac.in). It can be used by both teachers and students to track and manage various aspects of student life, including courses, subjects, faculty, attendance, disciplinary violations, marks, and CGPA. As an additional feature, the project aims to eliminate external dependencies for online classes by developing a video calling application from scratch and hosting it on local servers. Authentication is based on the institution's issued enrollment numbers to maintain security.

## Database Overview

The KioskMeet database consists of six main tables:
- Admin
- Student
- Faculty
- Faculty Subjects
- Attendance
- Result

For detailed information, refer to the E-R Diagram and mapping in the main project report.

## Tech Stack

KioskMeet is a full-stack website utilizing the following technologies:

**Frontend:**
- HTML
- CSS
- JavaScript

**Backend:**
- PHP

**Database:**
- MySQL (via phpMyAdmin)

The server is locally run using XAMPP (Apache HTTP Server). Notably, all code has been written from scratch without using any templates or frameworks.

## Features

- **General:**
  - Login/Signup
  - Session management

- **Students:**
  - Profile viewing
  - Attendance tracking
  - Result viewing
  - Join a meeting feature
  - Logout

- **Teachers:**
  - Profile management
  - Input attendance
  - Input grades
  - Create a meeting
  - Logout

- **Admin:**
  - Add Student/Teacher
  - View & update student data
  - View & update teacher data

## Contributors

- **Aryan Gupta (21104031)**
  - Login pages
  - Frontend design and logic
  - Database operations (PHP & MySQL)

- **Pritpal Singh (21104023)**
  - Faculty Dashboard
  - Session management and form operations (PHP)

- **Samarpit Kandhari (21104067)**
  - Admin Panel

- **Dweep (21104003)**
  - Student Dashboard

## Setup

To run this project locally:

1. Download the project code as a `.zip` file.
2. Import `lab.sql` into phpMyAdmin under a database named `lab`.
