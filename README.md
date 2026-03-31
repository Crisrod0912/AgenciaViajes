# ✈️ Agencia de Viajes

A relational database solution designed for the storage, organization, and analysis of travel agency data. It centralizes structured information such as customers, reservations, flights, hotels, tours, and payments to support efficient management and decision-making through Power BI.

## 📚 Managed Information

- 👥 **Customers:**
   - 🆔 Customer ID  
   - 📛 Name  
   - 📧 Email  
   - 📞 Phone  
   - 🌍 Country  
- 📅 **Reservations:**
   - 🆔 Reservation ID  
   - 👤 Customer ID  
   - ✈️ Flight ID  
   - 🏨 Hotel ID  
   - 🧭 Tour ID  
   - 📅 Reservation date  
- ✈️ **Flights:**
   - 🆔 Flight ID  
   - 🛫 Airline  
   - 🌍 Origin  
   - 🛬 Destination  
   - 💲 Price  
- 🏨 **Hotels:**
   - 🆔 Hotel ID  
   - 📛 Name  
   - ⭐ Category  
   - 🌍 Location  
   - 💲 Price  
- 🧭 **Tours:**
   - 🆔 Tour ID  
   - 📍 Destination  
   - ⏳ Duration  
   - 💲 Price  
- 💳 **Payments:**
   - 🆔 Payment ID  
   - 💰 Amount  
   - 💳 Payment method  
   - 📅 Payment date  
- 👨‍💼 **Employees:**
   - 🆔 Employee ID  
   - 📛 Name  
   - 🏢 Position

## 🚀 Features

- ⚙️ **Functionality:**
   - 🗄️ Structured management of travel agency data  
   - 🔗 Entity relationships using primary and foreign keys  
   - ⚡ Efficient query performance in Oracle Database  
   - 📊 Data visualization and reporting with Power BI  
   - 🧠 Support for data-driven decision-making  
- 📈 **Scalability:**
   - 📊 Handles structured datasets  
   - 🧩 Flexible schema for future expansion  
   - 🔗 Integration with Business Intelligence tools  
- 🛡️ **Security:**
   - 🔒 Database access control with users and roles  
   - 💾 Reliable and organized data storage  

## 🧠 Database Design

- 🧩 **Schema:** 
   - Relational Model  
- 📌 **Core Tables:**
   - Customers  
   - Reservations  
   - Flights  
   - Hotels  
   - Tours  
   - Payments  
   - Employees  
- 📊 **Relationships:**
   - One-to-Many (1:N) relationships  
   - Primary and Foreign Keys  

## 🔄 Data Processing

- 📥 **Input:**
   - Structured data within the system  
- 🔧 **Processing:**
   - Data normalization  
   - Relationship enforcement  
   - Data validation  
- 📤 **Storage:**
   - Managed in Oracle Database

## 🛠️ Technologies Used

- 🗄️ **Database:** Oracle 
- 📊 **Visualization Service:** Power BI  
- 🌱 **Version Control:** Git  

## ⚙️ Installation

### 📋 Prerequisites

- 🧰 [SQL Server Management Studio 2022](https://learn.microsoft.com/en-us/ssms/install/install)
- 📊 [Power BI](https://www.microsoft.com/es-es/download/details.aspx?id=58494)

### ⚙️ Configuration

Follow these steps to set up the project:

📥 **Step 1: Clone the repository**

   ```bash
   git clone https://github.com/Crisrod0912/AgenciaViajes.git
   ```

🗄️ **Step 2: Import and execute the database dump**

   - Open **Oracle SQL Developer**.
   - Import the `AgenciaViajes.sql` file into Oracle.
   
   After importing it, execute the script in your database.

🔐 **Step 3: Configure database permissions**

   After importing the database, create a user and grant them the necessary permissions by running the following commands in the Oracle SQL Developer or SQL*Plus console:

   ```sql
   CREATE USER Admin01 IDENTIFIED BY Admin01;
   
   GRANT CONNECT,RESOURCE,DBA TO Admin01;
   
   GRANT CREATE SESSION TO Admin01;
   
   GRANT CREATE TABLE TO Admin01;
   
   GRANT CREATE ANY TABLE TO Admin01;
   
   GRANT SELECT ANY TABLE TO Admin01;
   
   GRANT INSERT ANY TABLE TO Admin01;
   
   GRANT UPDATE ANY TABLE TO Admin01;
   
   GRANT DELETE ANY TABLE TO Admin01;
   
   GRANT DROP ANY TABLE TO Admin01;
   
   GRANT ALTER ANY TABLE TO Admin01;
   
   GRANT EXECUTE ANY PROCEDURE TO Admin01;
   
   GRANT CREATE ANY PROCEDURE TO Admin01;
   
   GRANT DROP ANY PROCEDURE TO Admin01;
   
   GRANT ALTER ANY PROCEDURE TO Admin01;
   ```

   Replace `'Admin01'` with a more secure password if desired.

🛡️ **Step 4: Connect Power BI**

   - Connect to Oracle Database
   - Load tables
   - Build dashboards and reports

## 📌 Recommendations
- 🔍 Perform periodic database optimization
- 👨‍🏫 Train users in Power BI
- 🔗 Integrate external services
- 🛡️ Implement monitoring and security measures
- 📈 Apply predictive analysis techniques

> [!NOTE]
> **Project Owner / Developer** 👨🏻‍💻  
>- Cristopher Rodríguez Fernández 
***
