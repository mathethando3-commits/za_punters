CREATE DATABASE zapunite DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE zapunite;

CREATE TABLE admins (
  id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(100) NOT NULL UNIQUE,
  password_hash VARCHAR(255) NOT NULL,
  role ENUM('super','editor') DEFAULT 'editor',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE universities (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  province VARCHAR(100) NULL,
  fee DECIMAL(10,2) NULL,
  open_date DATE NULL,
  close_date DATE NULL,
  status ENUM('open','closed') DEFAULT 'open',
  link VARCHAR(500),
  logo VARCHAR(255),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE bursaries (
  id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(255),
  provider VARCHAR(255),
  requirements TEXT,
  deadline DATE,
  link VARCHAR(500),
  category VARCHAR(100),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE internships (
  id INT AUTO_INCREMENT PRIMARY KEY,
  company VARCHAR(255),
  title VARCHAR(255),
  requirements TEXT,
  deadline DATE,
  link VARCHAR(500),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE articles (
  id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(255),
  slug VARCHAR(255) UNIQUE,
  content LONGTEXT,
  category VARCHAR(100),
  image VARCHAR(255),
  published_at DATETIME DEFAULT CURRENT_TIMESTAMP
);
