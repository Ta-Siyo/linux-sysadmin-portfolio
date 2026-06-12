# Database Setup

## Objective

Install, secure, and administer a MySQL database server on Ubuntu.

## Skills Demonstrated

- MySQL Installation and Configuration
- Database Security Hardening
- User and Permission Management
- Backup and Recovery
- SQL Administration

## Commands Used
Update package list (sudo apt update)
Install MySQL server (sudo apt install mysql-server -y)
CHeck MySQL service status (sudo systemctl status mysql)
Secure MySQL installation (sudo mysql_secure_installation)
Log into MySQL (sudo mysql)
Backup database (mysqldump -u root -p company_db > company_db_backup.sql)
Restore database (sudo mysql company_restory < company_db_backup.sql)

## SQL Commands
- Create database 
(CREATE DATABASE company_db;)
- Create user
(CREATE USER 'webadmin'@'localhost'
 IDENTIFIED BY 'StrongPassword123!';)
- Grant privileges
(GRANT ALL PRIVILEGES ON company_db.* TO 'webadmin'@'localhost';
 FLUSH PRIVILEGES;)
- Use database
(USE company_db;)
- Create table 
(CREATE TABLE employess (
   id INT AUTO_INCREMENT PRIMARY KEY,
   name VARCHAR(100),
   department VARCHAR(100),
); )
- Inset table data
(INSERT INTO employees (name, department)
VALUES
('siya', 'Development'),
('zimahle','Development')
('kuhle','Administration');)
- Verify data
(SELECT * FROM employees;)
- Create restore database
(CREATE DATABASE company_restore;)
- Switch database
(Use company_restore;)
- Verify restored data
(SHOW TABLES;
 SELECT * FROM employees;)

## Backup Process

mysqldump -u webadmin -p company_db > company_db_backup.sql

## Restore Process

mysql -u webadmin -p company_restore < company_db_backup.sql

## Screenshots

The screenshots show the steps taken.

## Lessons Learned

- Securing a database server
- Managing users and permissions
- Creating and valdating backups
- Performing database restoration
- Understanding core SQL administration tasks
