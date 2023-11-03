-- Create a table for user information
CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    usertype VARCHAR(50) NOT NULL
);

-- Create a table for personal information
CREATE TABLE personal_info (
    info_id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users(user_id),
    ssn INTEGER CHECK (ssn >= 100000000 AND ssn <= 999999999),
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    dob DATE,
    email VARCHAR(255),
    address VARCHAR(255),
    phone_number VARCHAR(20)
);

CREATE TABLE ssn (
    ssn INTEGER CHECK (ssn >= 100000000 AND ssn <= 999999999),
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    dob DATE,
    citizen BOOLEAN
);

CREATE TABLE employment (
    ssn INTEGER CHECK (ssn >= 100000000 AND ssn <= 999999999),
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    dob DATE,
    employer VARCHAR(255),
    start_date DATE
);