# Academic Management System

A Flask-based web application with database SQL for managing academic activities with three distinct portals: Student, Teacher, and Admin.

## Features

### Student Portal
- Dashboard with course overview, upcoming assignments, and announcements
- Course registration and drop functionality
- View attendance records
- Submit assignments
- Check grades and exam results
- View academic transcript
- Access financial records
- Browse library and check out books
- View class schedule

### Teacher Portal
- Dashboard with teaching schedule and upcoming assignments
- Manage courses and sections
- Take attendance
- Create and grade assignments
- Post announcements
- Manage exam results
- Set office hours

### Admin Portal
- Comprehensive user management (students, teachers, admins)
- Course and department management
- Semester and academic period configuration
- Section and schedule management
- Financial record management
- Library management (books and loans)
- Internship opportunity management
- Data import/export functionality

## Technologies Used

- **Backend**: Python with Flask framework
- **Database**: MySQL with Flask-MySQLdb connector
- **Frontend**: HTML, CSS, JavaScript with Jinja2 templating
- **Security**: SHA-256 password hashing, session management
- **File Handling**: Secure file uploads for assignments and profile pictures
- **Additional Libraries**: 
  - Werkzeug for security utilities
  - OpenPyXL for Excel file handling
  - CSV and JSON for data export

## Installation

### Prerequisites
- Python 3.7+
- MySQL server
- pip package manager
