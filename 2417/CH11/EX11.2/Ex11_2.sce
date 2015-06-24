clear;
clc;
printf("\t\t\tProblem Number 11.2\n\n\n");
// Chapter 11: Heat Transfer
// Problem 11.2 (page no. 553) 
// Solution

deltaX=0.150; //Given,150 mm =0.150 meter // //deltaX=length //Unit:meter
k=0.692; //Unit:W/(m*celcius) //k=proportionality constant //k=thermal conductivity 
T1=70; //temperature maintained at one face //celcius
T2=30; //tempetature maintained at other face //celcius
deltaT=T2-T1; //celcius //change in temperature
Q=(-k*deltaT)/deltaX; //Heat transfer per square foot of wall //unit:W/m^2
printf("Heat transfer per square foot of wall is %f W/m^2",Q);
