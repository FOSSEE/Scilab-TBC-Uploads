//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 5.42\n\n\n");
// Chapter 5 : Properties Of Liquids And Gases
// Problem 5.42  (page no. 227) 
// Solution

//Because the process is irreversible,we cannot show it on the Mollier diagram.However,the analysis of problem 3.22 for the nozzle is still valid,and all that is      needed is the enthalpy at the beginning and the end of the expansion.From the problem 5.38,
h1=1270; //Btu/lbm //initial enthalpy
//For h2 we locate the state point on the Mollier diagram as being saturated vapor at 200 psia.This gives us
h2=1199; //Btu/lbm //final enthalpy
J=778; //Conversion factor
gc=32.17; //lbm*ft/lbf*s^2 //constant of proportionality
V2=sqrt(2*gc*J*(h1-h2)); //final velocity //Ft/s
printf("As the steam leaves the nozzle,The final velocity is %f ft/s",V2);
