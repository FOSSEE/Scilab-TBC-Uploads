clear;
clc;
printf("\t\t\tProblem Number 6.34\n\n\n");
// Chapter 6: The Ideal Gas
// Problem 6.34 (page no. 284) 
// Solution

//From the table at 1000 R:                     //From the table at 500 R:
h2=240.98;                                       h1=119.48; 
//Btu/lbm //enthalpy                             //Btu/lbm //enthalpy
u2=172.43;                                       u1=85.20; 
//Btu/lbm //internal energy                      //Btu/lbm //internal energy 
fy2=0.75042;                                     fy1=0.58233; 
//Btu/lbm*R                                      //Btu/lbm*R

//The change in enthalpy is
deltah=h2-h1; //Btu/lbm
//The change in internal energy is
deltau=u2-u1; //Btu/lbm
printf("The change in enthalpy is %f Btu/lbm & the change in internal energy is %f Btu/lbm\n",deltah,deltau);
//Because in the constant-pressure process -R*log(p2/p1) is zero,
deltas=fy2-fy1; //Btu/lbm*R //The entropy when air is heated at constant pressure
printf("The entropy when air is heated at constant pressure is %f Btu/lbm/R\n",deltas);
