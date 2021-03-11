# sql-challenge
In this project I will perform data engineering and analysis of employee data provided by Pewlett Hackard. In order to do so I utilized Postgres PgAdmin4 to create tables, import 6 CSV files, create a SQL database, and perform queries to find the information requested.

After inspecting the CSV's I created an ERD using GenMyModel. You can find a .png image of my ERD table in the file "DatabaseDiagram.png"

You will find the table schemata within the EmployeeSQL folder, titled "table_schemata" and the queries for the data analysis titled "queries." Under the "resources" folder you will find the provided CSV files.

In order to perform the queries, I imported the CSV files in the following order: 
    ・titles 
    ・employees
    ・salaries
    ・deppartments
    ・dept_emp
    ・dept_manager

Upon analysis of employee #499942 I found that my ID badge was linked to the name "April Foolsday." 