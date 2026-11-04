# Employee Database Setup & Management

A comprehensive SQL script demonstrating Data Definition Language (DDL) and Data Manipulation Language (DML) operations in MySQL to create, modify, and populate an Employee Management System database.

---

## 📌 Features & Operations Covered

1. **Database Operations**:
   - Database creation, selection, and safe deletion using `DROP DATABASE IF EXISTS`.
2. **Table Schema Creation**:
   - `Departments`: Stores department names and IDs.
   - `Location`: Stores location details and IDs.
   - `Employees`: Stores employee details including gender, age, designation, salary, department, and location links.
3. **DDL Modifications (`ALTER`, `RENAME`, `TRUNCATE`, `DROP`)**:
   - Add new columns (`email`).
   - Modify column data types (`designation`).
   - Drop existing columns (`age`).
   - Rename columns (`hire_date` → `date_of_joining`).
   - Rename tables (`Departments` → `Departments_Info`, `Location` → `Locations`).
   - Data cleanup via `TRUNCATE` and table removal using `DROP TABLE`.
4. **Data Insertion (DML)**:
   - Insert records into `Departments`, `Location`, and `Employees` tables.
5. **Data Retrieval**:
   - Query all records from created tables using `SELECT`.

---

## 🗄️ Database Schema

### `Departments` Table
| Column Name | Data Type | Constraints | Description |
| :--- | :--- | :--- | :--- |
| `department_id` | `INT` | `PRIMARY KEY` | Unique identifier for each department |
| `department_name` | `VARCHAR(100)` | — | Name of the department |

### `Location` Table
| Column Name | Data Type | Constraints | Description |
| :--- | :--- | :--- | :--- |
| `location_id` | `INT` | `PRIMARY KEY` | Unique identifier for each location |
| `location` | `VARCHAR(30)` | — | City/Location name |

### `Employees` Table
| Column Name | Data Type | Constraints | Description |
| :--- | :--- | :--- | :--- |
| `employee_id` | `INT` | `PRIMARY KEY` | Unique identifier for each employee |
| `employee_name` | `VARCHAR(50)` | — | Employee full name |
| `gender` | `ENUM('M','F')` | — | Gender ('M' or 'F') |
| `age` | `INT` | — | Employee age |
| `designation` | `VARCHAR(100)` | — | Job title / Role |
| `department_id` | `INT` | `FOREIGN KEY` (Logical) | Reference to `Departments` |
| `location_id` | `INT` | `FOREIGN KEY` (Logical) | Reference to `Location` |
| `salary` | `DECIMAL(10,2)` | — | Employee salary amount |

---

## 🚀 How to Run the Script

### Prerequisites
- MySQL Server installed and running.
- MySQL Client (e.g., MySQL Command Line Client, MySQL Workbench, or phpMyAdmin).

### Execution Steps

1. **Via MySQL Command Line**:
   ```bash
   mysql -u <username> -p < emp_sql.sql
   ```

2. **Via MySQL Workbench**:
   - Open MySQL Workbench and connect to your database instance.
   - Open the `emp_sql.sql` file (`File` -> `Open SQL Script...`).
   - Click the execute button (⚡) to run the full script.

---

## 📊 Sample Data Included

### Departments
| department_id | department_name |
| :--- | :--- |
| 1 | HR |
| 2 | IT |
| 3 | Finance |

### Locations
| location_id | location |
| :--- | :--- |
| 1 | Chennai |
| 2 | Madurai |
| 3 | Coimbatore |

### Employees
| employee_id | employee_name | gender | age | designation | department_id | location_id | salary |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| 101 | Arun | M | 25 | Manager | 1 | 1 | 35000.00 |
| 102 | Vinoth | F | 28 | Developer | 2 | 2 | 45000.00 |
| 103 | Daniel | M | 30 | Accountant | 3 | 3 | 30000.00 |
