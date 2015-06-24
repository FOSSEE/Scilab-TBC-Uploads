//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 1.8\n\n\n");
// Chapter 1: Fundamental Concepts
// Problem 1.8 (page no. 34) 
// Solution

//Given
Rho=13.595; //Unit: kg/m^3 //The density of mercury
h=25.4; //Unit: mm //Height of column of mercury
g=9.806; //Unit:m/s^2 //the local acceleration of gravity
//Solution
p=Rho*g*h; //P=Pressure at the base of a column of mercury //Unit:Pa
printf("Pressure at the base of a column of mercury is %f Pa",p);
