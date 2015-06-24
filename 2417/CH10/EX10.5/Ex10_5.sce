//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 10.5\n\n\n");
// Chapter 10 : Refrigeration
// Problem 10.5  (page no. 506) 
// Solution

COP=10.72; //In the problem 10.2 //Coefficient of performance
P=2.8; //In the problem 10.2 //The power was 2.8 kW
COPactual=3.8; //Actual Coefficient of performance(COP)
power=P*COP/COPactual; //The power required  //unit:kW
printf("The power required is %f kW",power)
