# Database Lab Exercises

![Database](https://user-images.githubusercontent.com/23629340/40541063-a07a0a8a-601a-11e8-91b5-2f13e4e6b441.png)

## Learning Goals

This series of exercises will help you practice and apply key database concepts and techniques. By completing these exercises, you will be able to:

- Understand and utilize various SQL commands.
- Design and create database schemas.
- Perform CRUD (Create, Read, Update, Delete) operations on databases.
- Implement relationships between tables using foreign keys.
- Use advanced SQL features such as joins, subqueries, and transactions.

## Introduction

Databases are fundamental to modern software applications. They allow you to store, retrieve, and manipulate data efficiently. In these exercises, you will work with a relational database to reinforce your understanding of database concepts and SQL.

## Requirements

- Install a relational database management system (RDBMS) such as MySQL, PostgreSQL, or SQLite.
- Install a database client tool like MySQL Workbench, pgAdmin, or DBeaver.

## Submission

Upon completion, save your SQL scripts and any relevant files. Submit them according to your instructor's guidelines.

## Exercises

### Exercise 1: Creating a Database

Create a new database named `company`. Inside this database, create the following tables:

- `employees`:
  - `id` (INT, Primary Key, Auto Increment)
  - `first_name` (VARCHAR(50))
  - `last_name` (VARCHAR(50))
  - `email` (VARCHAR(100))
  - `hire_date` (DATE)

- `departments`:
  - `id` (INT, Primary Key, Auto Increment)
  - `name` (VARCHAR(100))

- `projects`:
  - `id` (INT, Primary Key, Auto Increment)
  - `name` (VARCHAR(100))
  - `start_date` (DATE)
  - `end_date` (DATE)

### Exercise 2: Inserting Data

Insert the following data into your tables:

- `employees`:
  ```sql
  INSERT INTO employees (first_name
