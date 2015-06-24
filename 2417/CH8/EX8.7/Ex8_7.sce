//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 8.7\n\n\n");
// Chapter 8 : Vapor Power Cycles
// Problem 8.7  (page no. 386) 
// Solution

//From problem 8.3,
work=1515-1150.5; //Unit:Btu/lbm of steam //pump work is neglected //Useful ideal work
//Because of the heat losses, 50 Btu/lbm of the 364.5 Btu/lbm becomes unavailable.
available=364.5-50; //Unit:Btu/lbm 
n=available/(1515-180.15); //Thermal efficiency of the cycle neglecting pump work h4=1515; //Unit:Btu/lbm //enthalpy & h1=180.15; //Unit:Btu/lbm //enthalpy
printf("The thermal efficiency of the cycle neglecting pump work is %f percentage\n\n",n*100);
