//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 11.9\n\n\n");
// Chapter 11 : Heat Transfer
// Problem 11.9  (page no. 565) 
// Solution

//A bare steel pipe
ro=3.50; //Outside diameter //Unit:in.
ri=3.00; //inside diameter //Unit:in.
Ti=240; //Inside temperature //unit:fahrenheit
To=120; //Outside temperature //unit:fahrenheit
L=5; //Length //Unit:ft
deltaT=Ti-To; //Change in temperature //unit:fahrenheit
k=26 //Unit:Btu/(hr*ft*F) //k=proportionality constant //k=thermal conductivity
Q=(2*%pi*k*L*deltaT)/log(ro/ri); //The heat loss from the pipe //unit:Btu/hr
printf("The heat loss from the pipe is %f Btu/hr",Q);
