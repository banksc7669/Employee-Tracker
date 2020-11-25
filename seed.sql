-- Create the database movie_planner_db and specified it for use.
CREATE DATABASE employee_tracker_db;
USE employee_tracker_db;
-- Create the table plans.
CREATE TABLE movies (
  id int NOT NULL AUTO_INCREMENT,
  movie varchar(255) NOT NULL,
  PRIMARY KEY (id)
);
-- Insert a set of records.
INSERT INTO movies (movie) VALUES ('Rush Hour 2');