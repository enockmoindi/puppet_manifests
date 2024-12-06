# Puppet Manifests for LAMP Stack Configuration  

**A collection of Puppet manifests for automating the setup and configuration of a LAMP stack, PHP info page, and server user/group management.**  

## Overview  
This repository contains Puppet manifests designed to:  
1. Deploy a LAMP stack (Linux, Apache, MySQL, PHP).  
2. Create and manage server users and groups.  
3. Deploy a PHP info page for verifying PHP installation.  

These manifests simplify server setup and ensure consistent configuration across environments.  

---

## Project Structure  

| **File**                 | **Description**                                                                                     |  
|--------------------------|-----------------------------------------------------------------------------------------------------|  
| `lamp_stack_server.pp`   | Automates the installation and configuration of a LAMP stack, including Apache, MySQL, and PHP.     |  
| `phpinfo.php`            | A PHP file that displays PHP configuration details, used for verifying PHP installation.            |  
| `server_users_groups.pp` | Manages the creation of system users and groups, assigning permissions as needed.                   |  

---

## Features  

### 1. LAMP Stack Setup (`lamp_stack_server.pp`)  
- Installs and configures:  
  - **Apache** as the web server.  
  - **MySQL** as the database server.  
  - **PHP** for dynamic content processing.  
- Ensures required services are enabled and running.  

### 2. User and Group Management (`server_users_groups.pp`)  
- Creates users and groups as specified.  
- Assigns appropriate permissions to ensure secure server operations.  

### 3. PHP Info Page Deployment (`phpinfo.php`)  
- Places a `phpinfo.php` file in the web server root directory.  
- Verifies the PHP installation by displaying runtime configuration details.  

---

## Requirements  
- Puppet 6.0+  
- A supported Linux distribution (e.g., Ubuntu, CentOS, or Debian).  
- Internet access for package installations (or preconfigured package mirrors).  

---

## Usage  

1. **Clone the Repository**  
   ```bash  
   git clone https://github.com/yourusername/puppet-lamp-stack.git  
   cd puppet-lamp-stack  
   ```  

2. **Apply the Manifests**  

- **LAMP Stack Setup**:  
   ```bash  
   puppet apply lamp_stack_server.pp  
   ```  

- **User and Group Management**:  
   ```bash  
   puppet apply server_users_groups.pp  
   ```  

3. **Deploy PHP Info Page**  
- Place `phpinfo.php` in the web root directory (automated in `lamp_stack_server.pp` if integrated).  
- Verify the PHP setup by visiting:  
  ```
  http://<your_server_ip>/phpinfo.php  
  ```  

---

## Customization  

- Update the manifests to reflect your specific requirements:  
  - **Users and Groups**: Modify the `server_users_groups.pp` manifest with desired user/group details.  
  - **LAMP Stack**: Adjust the packages and configuration settings in `lamp_stack_server.pp` as needed.  
