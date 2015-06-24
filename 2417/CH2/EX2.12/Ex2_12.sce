clear;
clc;
printf("\t\t\tProblem Number 2.12\n\n\n");
// Chapter 2: Work, Energy, and Heat
// Problem 2.12 (page no. 75) 
// Solution

printf("At the entrance of device,\n");
p1=200*1000; //200kPa*1000 Pa/kPa  //pressure at the entrance //Unit:N/m^2
Rho1=1000; //kg/m^3 //Fluid density at entrance
v1=1/Rho1; //Specific Volume at entrance or reciprocal of fluid density
FW1=p1*v1; //Flow work at entrance //Unit:N*m/kg
printf("Flow work = %fN*m/kg\n",FW1);

printf("At the exit of device,\n");
p2=100*1000; //200kPa*1000 Pa/kPa  //pressure at the exit //Unit:N/m^2
Rho2=250; //kg/m^3 //Fluid density at exit
v2=1/Rho2; //Specific Volume at entrance or reciprocal of fluid density
FW2=p2*v2; //Flow work at exit//Unit:N*m/kg
printf("Flow work = %f N*m/kg\n",FW2);
