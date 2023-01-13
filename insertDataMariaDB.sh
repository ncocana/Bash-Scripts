#!/bin/bash
 
echo "Inserting data into department and instructor tables..."

queryDepartment="use school; INSERT INTO department (dept_name, building, budget) \
        VALUES('Comp. Sci.', 'Taylor', 100000),
('Biology', 'Watson', 90000),
('Elec. Eng.', 'Taylor', 85000),
('Music', 'Packard', 80000),
('Finance', 'Painter', 120000),
('History', 'Painter', 50000),
('Physics', 'Watson', 70000);"
queryInstructor="use school; INSERT INTO instructor (ID, name, dept_name, salary) \
        VALUES(10101,'Srinivasan','Comp. Sci.',65000.00),
(12121,'Wu','Finance',90000.00),
(1515,'Mozart','Music',40000.00),
(22222,'Einstein','Physics',95000.00),
(32343,'El Said','History',60000.00),
(33456,'Gold','Physics',87000.00),
(45565,'Katz','Comp. Sci.',75000.00),
(58583,'Califieri','History',62000.00),
(76543,'Singh','Finance',80000.00),
(76766,'Crick','Biology',72000.00),
(83821,'Brandt','Comp. Sci.',92000.00),
(98345,'Kim','Elec. Eng.',80000.00);"

sudo mysql -e "$queryDepartment"
sudo mysql -e "$queryInstructor"

echo "Inserting dummy data into department and instructor tables finished"
