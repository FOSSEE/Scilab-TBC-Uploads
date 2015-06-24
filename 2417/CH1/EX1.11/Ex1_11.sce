//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 1.11\n\n\n");
// Chapter 1: Fundamental Concepts
// Problem 1.11 (page no. 35) 
// Solution

//Given
Patm=30.0 //in. //pressure of mercury at standard temperature
Vacuum=26.5  //in.  //vaccum pressure
Pabs=Patm-Vacuum; //Absolute pressure of mercury //in.
// (3.5 inch* (ft/12 inch) * (13.6*62.4)LBf/ft^3 * kg/2.2 LBf * 9.806 N/kg)/((12 inch^2/ft^2) * (0.0254 m/inch)^2)
p=(3.5*(1/12)*13.6*62.4*(1/2.2)*9.806)/(12^2*0.0254^2*1000); //kPa //Absolute pressure in psia
printf("Absolute pressure of mercury is %f kPa",p)
