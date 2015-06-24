clear;
clc;
printf("\t\t\tProblem Number 11.1\n\n\n");
// Chapter 11: Heat Transfer
// Problem 11.1 (page no. 553) 
// Solution


deltaX=6/12; //6 inch = 6/12 feet //deltaX=length //unit:feet
k=0.40; //Unit:Btu/(hr*ft*F) //k=proportionality constant //k=thermal conductivity //From the table
T1=150; //temperature maintained at one face //fahrenheit
T2=80; //tempetature maintained at other face //fahrenheit
deltaT=T2-T1; //fahrenheit //Change in temperature
Q=(-k*deltaT)/deltaX; //Heat transfer per square foot of wall //Unit:Btu/hr*ft^2
printf("Heat transfer per square foot of wall is %f Btu/hr*ft^2",Q);
