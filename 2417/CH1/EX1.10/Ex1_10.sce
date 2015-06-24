//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 1.10\n\n\n");
// Chapter 1: Fundamental Concepts
// Problem 1.10 (page no. 35) 
// Solution

//Given
Rho=2000; //Unit: kg/m^3 //The density of fluid
h=-10; //Unit: mm //Height of column of fluid //the height is negative because it is measured up from the base
g=9.6 //Unit:m/s^2 //the local acceleration of gravity
//Solution
p=-Rho*g*h; //P=Pressure at the base of a column of fluid //Unit:Pa
printf("Pressure at the base of a column of fluid is %f Pa",p);
