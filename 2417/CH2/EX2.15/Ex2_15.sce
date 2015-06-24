clear;
clc;
printf("\t\t\tProblem Number 2.15\n\n\n");
// Chapter 2: Work, Energy, and Heat
// Problem 2.15 (page no. 79) 
// Solution

//p1*v1=p2*v2
p1=200*1000; //p1=Initial Pressure //Unit:Pa
p2=800*1000; //p2=Final Pressure //Unit:Pa
v1=0.1; //v1=Initial Special Volume //Unit:m^3/kg
v2=(p1/p2)*v1; //v1=final Special Volume //Unit:m^3/kg
w=p1*v1*log(v2/v1); //workdone //Unit:kJ/kg
printf("Work done per kilogram of gas is %f kJ/kg (into the system)",w/1000);
