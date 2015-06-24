//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 5.41\n\n\n");
// Chapter 5 : Properties Of Liquids And Gases
// Problem 5.41  (page no. 226) 
// Solution

//From the conditions given in problem 5.38,the isentropic change in enthalpy is 122 Btu/lbm
//So,
h1minush2=122; //Btu/lbm //change in enthalpy
J=778; //Conversion factor
gc=32.17; //lbm*ft/lbf*s^2 //constant of proportionality
V2=sqrt(2*gc*J*(h1minush2)); //final velocity //ft/s
printf("As the steam leaves the nozzle,The final velocity is %f ft/s",V2);
