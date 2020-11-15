# Pewlett-Hackard-Analysis
Employee Database with SQL

## Overview of the Pewlett Hackard analysis
  - The purpose of this analysis was to act as an HR analyst that would be helping a company, Pewlett Hackard, plan ahead for the future by performing employee research to determine who in the company will be retiring in a few years and how many positions the company will have to fill? This data analysis of employee data was done by using SQL to build a employee database. Additionally, using past knowledge of DataFrames and tabular data, data modeling our employee database by creating an entity relationship diagrams (ERDs) was important in answering the challenge's questions. Creating queries from the imported data and ERD, helped troubleshoot common errors and address the "silver tsunami".
  

## Results from the Pewlett Hackard analysis deliverables
  - **Deliverable 1: The Number of Retiring Employees by Title**
  
  **IMAGE ONE**
  ![](images/pewlett_hackard_retiree_names.png)
  **IMAGE TWO**
  ![](images/pewlett_hackard_unique_names.png)
  **IMAGE THREE**
  ![](images/pewlett_hackard_retiree_names.png)
  - Four major points from the first deliverable
    1. From image one, a table of the employee number, full name, job title, and time with the company is listed. There are duplicate entries for some employees because they have switched titles over the years.
    2. From image two, the duplicate name issues is resolved by the usage of the "DISTINCT ON" coding statemetn that retrieves the first occurence of the employee number. This new clean and unique table provides the employee number, their full name, and job title. 
