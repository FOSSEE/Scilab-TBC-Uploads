clear;
clc;
printf("\t\t\tProblem Number 3.7\n\n\n");
// Chapter 3 : The First Law Of Thermodynamics
// Problem 3.7 (page no. 97) 
// Solution

Rho=62.4 //Unit:lbm/ft^3 //the density of the fluid
V=100 //Unit:ft/s //Velocity of fluid
d=1 //Unit:in //Diameter
//1 ft^2=144 in^2 //A=(%pi/4)*d^2
A=(%pi*d^2)/(4*144) //Unit:ft^2 //area 
m=Rho*A*V; //Unit:lbm/s //mass rate of flow per unit time
printf("Mass flow rate is %f lbm/s\n",m);
