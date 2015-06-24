clear;
clc;
printf("\t\t\tProblem Number 3.5\n\n\n");
// Chapter 3 : The First Law Of Thermodynamics
// Problem 3.5 (page no. 96) 
// Solution

P1=100 //Unit:psia //Pressure at the entrance to a steady-flow device
Rho1=62.4 //Unit:lbm/ft^3 //the density of the fluid
A1V1=10000 //Unit:ft^3/min //Entering fluid
A2=2 //Unit:ft^2 //Exit area
m=Rho1*A1V1; //Unit:lbm/min //mass rate of flow per unit time
printf("Mass flow rate is %f LBm/min\n",m);

Rho2=Rho1; //Unit:lbm/ft^3 //the density of the fluid
//m=Rho2*A2*V2
//So,
V2=m/(Rho2*A2); //velocity at exit //Unit:ft/min
printf("The exit velocity is %f ft/min",V2);
