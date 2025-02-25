# Waste Management System

## Table of Contents
- [Introduction](#introduction)
- [Features](#features)
- [Technologies Used](#technologies-used)
- [Installation](#installation)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)
- [Contact](#contact)

## Introduction
The Waste Management System is designed to efficiently track and manage waste collection, disposal, and recycling operations. It helps municipalities, organizations, and individuals optimize waste management practices for a cleaner environment.

## Features
- User authentication and role-based access
- Waste collection scheduling and tracking
- Real-time monitoring of waste disposal
- Reporting and analytics for waste generation and management
- Integration with local recycling centers
- Notification system for collection reminders
- Interactive dashboard for visualizing waste data

## Technologies Used
- Frontend: HTML, CSS, JavaScript, React
- Backend: Node.js
- Database: MySQL

## Installation
### Prerequisites
- Node.js and npm installed
- Database setup (MongoDB/MySQL/PostgreSQL)

### Steps
### Step 1: Download and Install XAMPP
1. Go to the official XAMPP website: https://www.apachefriends.org.
2. Download the version compatible with your operating system (Windows, macOS, or Linux).
3. Run the installer and follow the instructions.
4. During installation, ensure Apache and MySQL are selected.
5. Open the XAMPP Control Panel and start Apache and MySQL.

### Step 2: Download the Project
1. Obtain the project files (the folder should be named waste-management-system-main).
2. Place the project folder inside the XAMPP htdocs directory:
   - Windows: C:\xampp\htdocs\
   - macOS/Linux: /opt/lampp/htdocs/

### Step 3: Import the Database
1. Open phpMyAdmin in your browser: http://localhost/phpmyadmin.
2. Create a new database named wms.
3. Import the SQL file provided with the project into the wms database.

### Step 4: Configure the Connection File
1. Open the project folder (waste-management-system-main) in a text editor.
2. Locate the connection.php file.
3. Update the database credentials to match the wms database: $con = mysqli_connect('localhost', 'root','', 'wms'); //edit with your username and password by default the username and password is given  

### Step 5: Access the Project
1. Open a browser and enter:
   http://localhost/waste-management-system-main/
2. Ensure the folder name in the URL matches exactly (waste-management-system-main).

### Optional: Access Over a Network
1. Find the device’s local IP address (e.g., 192.168.1.100).
2. On another device, enter:
   http://<device_ip>/waste-management-system-main/

## Usage
- Register or log in to access features
- Schedule waste collection requests
- Monitor waste disposal records
- View reports and analytics
- Receive notifications and alerts

## Contributing
We welcome contributions! To contribute:
1. Fork the repository
2. Create a new branch (`feature-branch`)
3. Commit your changes
4. Push the branch and create a pull request

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contact
For any queries, reach out at:
- **Email**: yogeshsawairam142@gmail.com
- **GitHub**: (https://github.com/yogeshs1103)

