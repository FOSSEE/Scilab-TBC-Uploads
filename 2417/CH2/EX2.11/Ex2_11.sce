clear;
clc;
printf("\t\t\tProblem Number 2.11\n\n\n");
// Chapter 2: Work, Energy, and Heat
// Problem 2.11 (page no. 74) 
// Solution

printf("At the entrance of device,\n");
p1=100; //pressure at the entance //Unit:psia,lbf/in^2
Rho1=62.4; //Unit:lbm/ft^3  //Rho=The density
v1=144*(1/Rho1) //Specific Volume at entrance or reciprocal of fluid density // 144 in^2=1 ft^2
//1 Btu = 778 ft*lbf 
J=778; //Unit:ft*lbf/Btu //conversion factor
FW1=(p1*v1)/J; //Flow work  //Btu/lbm
printf("Flow work = %f Btu/lbm\n",FW1);

printf("At the exit of device,\n");
p2=50; //pressure at the exit //Unit:psia,lbf/in^2
Rho2=30; //Unit:lbm/ft^3 //Rho=The density
v2=144*(1/Rho2) //Specific Volume at exit or reciprocal of fluid density // 144 in^2=1 ft^2
//1 Btu = 778 ft*lbf 
J=778; //Unit:ft*lbf/Btu //conversion factor
FW2=(p2*v2)/J; //Flow work //Btu/lbm
printf("Flow work = %f Btu/lbm\n",FW2);
