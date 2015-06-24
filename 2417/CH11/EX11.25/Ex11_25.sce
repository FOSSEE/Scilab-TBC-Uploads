//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 11.25\n\n\n");
// Chapter 11 : Heat Transfer
// Problem 11.25  (page no. 602) 
// Solution

//In problem 11.24, A COUNTERFLOW HEAT EXCHANGER is operated in the parallel flow
//Hot oil enters at 215 F and leaves at 125 F
//Water enters the unit at 60 F and leaves at 90 F
//Therefore,From figure 11.35, 
thetaA=215-60; //the greatest temperature difference between the fluids(at either inlet or outlet) //Unit:fahrenheit
thetaB=125-90; //the least temperature difference between the fluids(at either inlet or outlet) //Unit:fahrenheit
deltaTm=(thetaA-thetaB)/log(thetaA/thetaB); //logarithmic mean temperature difference //Unit:fahrenheit 
//From the oil data,
m=400*60;  //mass //Unit:lb/sec //1 min=60 sec
Cp=0.85; //Specific heat of the oil //Unit:Btu/(lb*F)
deltaT=215-125;  //Change in temperature  //Unit:fahrenheit
Q=m*Cp*deltaT //The heat transfer //Unit:Btu/hr
//Q=U*A*deltaTm
U=40;//The overall coefficient of heat transfer of the unit //Unit:Btu/(hr*ft^2*F)
A=Q/(U*deltaTm); //Umit:ft^2 //The outside surface area
printf("The outside surface area required is %f ft^2",A);





