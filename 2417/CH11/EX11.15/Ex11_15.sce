//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 11.15\n\n\n");
// Chapter 11 : Heat Transfer
// Problem 11.15  (page no. 574) 
// Solution

D=3.5/12; //3.5 inch = 3.5/12 feet//Unit:ft //Outside diameter
Ti=120; //Inside temperature //unit:fahrenheit
To=70; //Outside temperature //unit:fahrenheit
deltaT=Ti-To; //unit:fahrenheit //Change in temperature
h=0.9; //Coefficient of heat transfer //Unit:Btu/(hr*ft^2*F)
L=5; //Length //Unit:ft //From problem 11.10
A=(%pi*D)*L;  //Area //Unit:ft^2 
Q=h*A*deltaT; //The heat loss due to convection //Unit:Btu/hr //Newton's law of cooling
printf("The heat loss due to convection is %f Btu/hr",Q);
