//Caption: Program to determine the Arithmetic Mean
//Example 3.1
//Page 40
clc;
x = input('Monthly Salaries of Employees');
n = length(x); //Number of Observations
X = sum(x)/n;
disp(X,'Arithmetic mean of salaries of the employees =')
//Result
//Monthly Salaries of Employees [12000,14500,8500,13500,13500,17500,11500];
//Arithmetic mean of salaries of the employees =  13000