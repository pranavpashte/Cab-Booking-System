# 🚖 Cab Booking System

A full-stack Cab Booking web application built using **Spring Boot, JSP, and MySQL** that enables users to book rides, calculate fares dynamically, and manage booking lifecycle operations.

---

## 📌 Project Description

The Cab Booking System is designed to simulate a real-world ride booking platform.  
It provides secure authentication, dynamic fare calculation, and booking management features using a structured MVC architecture.

---

## 🚀 Key Features

- 🔐 Secure user authentication with session management
- 🚗 Dynamic fare calculation based on distance and vehicle category
- 📜 Booking history tracking
- ❌ Ride cancellation functionality
- 💳 Payment mode tracking (UPI / Cash)
- 🧠 MVC architecture with Repository pattern
- 📱 Responsive JSP-based user interface with validation workflow

---

## 🛠 Tech Stack

### Backend
- Spring Boot
- Spring MVC
- Spring Data JPA
- Maven

### Frontend
- JSP
- HTML
- CSS
- JavaScript

### Database
- MySQL

---

## 🗄 Database Design

### Users Table
- id (Primary Key)
- email (Unique)
- name
- phone
- password

### Bookings Table
- id (Primary Key)
- cab_type
- pickup
- drop_location
- distance
- fare
- booking_time
- payment_mode
- status
- user_id (Foreign Key)

Relationship:
One user can create multiple bookings (One-to-Many relationship).

---

## ⚙️ How to Run the Project

1. Clone the repository  
   git clone https://github.com/yourusername/Cab-Booking-System.git

2. Create MySQL database  
   Run the provided `cab_booking_db.sql` file in MySQL.

3. Update database configuration  
   Edit `application.properties` with your MySQL username and password.

4. Run the application  
   mvn spring-boot:run

5. Open in browser  
   http://localhost:8080
