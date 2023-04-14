-- Drops existing tables, so we start fresh with each
-- run of this script
-- e.g. DROP TABLE IF EXISTS ______;

DROP TABLE IF EXISTS staff;
DROP TABLE IF EXISTS contact;
DROP TABLE IF EXISTS company;
DROP TABLE IF EXISTS activities;

-- CREATE TABLES

CREATE TABLE staff (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  hire_date TEXT,
  title TEXT,
  email TEXT,
  phone_number TEXT
);

CREATE TABLE contact (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  title TEXT,
  company_id INTEGER,
  email TEXT,
  phone_number TEXT
);

CREATE TABLE company (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  company_name TEXT,
  industry TEXT,
  address TEXT,
  relationship_start TEXT,
  staff_id INTEGER
);

CREATE TABLE activities (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  staff_id INTEGER,
  contact_ID INTEGER,
  category TEXT,
  description TEXT,
  timestamp TEXT
)
