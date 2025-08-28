# 🦠 COVID Database Analysis  

This project contains a **SQL-based relational database** designed to store, manage, and analyze COVID-19 related information.  
It demonstrates database design, normalization, queries, and insights generation using **MySQL**.  

---

## 📌 Project Overview  
The goal of this project is to create a comprehensive database system that captures and analyzes:  
- **Patient Information** (age, gender, status, contact details)  
- **Medical Facilities** (capacity, occupancy, location)  
- **Medical Staff** (roles, assignments)  
- **Testing Records** (positive/negative results with dates)  
- **Vaccination Records** (type, date, patient mapping)  
- **Contact Tracing** (infection chain, quarantined/asymptomatic/tested contacts)  

It also includes **complex SQL queries, views, and triggers** to simulate real-world health monitoring systems.  

---

## ⚙️ Features Implemented  
- 📋 **Tables & Relationships**  
  - Patients  
  - Medical Facilities  
  - Medical Staff  
  - Test Records  
  - Vaccination Records  
  - Contact Tracing  

- 🔑 **Primary & Foreign Keys** to maintain referential integrity.  

- 📊 **Analysis Queries**:  
  - Gender-wise patient distribution  
  - Average age of hospitalized patients  
  - Occupancy percentage of hospitals  
  - Patients with positive test results but no vaccination  
  - Age-group based severity analysis  

- 👩‍⚕️ **Healthcare Analytics Examples**  
  - Facility with highest/lowest occupancy  
  - Staff count per facility  
  - Average time between diagnosis and vaccination  

- 👀 **Views & Triggers**  
  - `Patient_contact` view for quick recovery tracking  
  - Safety trigger (demo of restricted operations)  

---

## 📂 Repository Structure  
