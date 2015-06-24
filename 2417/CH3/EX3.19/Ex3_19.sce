clear;
clc;
printf("\t\t\tProblem Number 3.19\n\n\n");
// Chapter 3 : The First Law Of Thermodynamics
// Problem 3.19 (page no. 120) 
// Solution

h1=3450*1000 //Unit:J/kg //Enthalpy of steam when it enters a nozzle
h2=2800*1000 //Unit:J/kg //Enthalpy of steam when it leaves a nozzle

//V2^2/2=h1-h2;
V2=sqrt(2*(h1-h2)); //V2=Final velocity //Unit:m/s
printf("Final velocity = %f m/s\n",V2);
