clear;
clc;
printf("\t\t\tProblem Number 3.6\n\n\n");
// Chapter 3 : The First Law Of Thermodynamics
// Problem 3.6 (page no. 97) 
// Solution

Rho1=1000 //Unit:kg/m^3 //the density of the fluid at entrance
A1V1=2000 //Unit:m^3/min //Entering fluid
A2=0.5 //Unit:ft^2 //Exit area
m=Rho1*A1V1; //Unit:kg/min //mass rate of flow per unit time
printf("Mass flow rate is %f kg/min\n",m);

Rho2=Rho1; //Unit:kg/m^3 //the density of the fluid at exit
//m=Rho2*A2*V2
//So,
V2=m/(Rho2*A2); //The exit velocity //Unit:m/min
printf("The exit velocity is %f m/min",V2);

