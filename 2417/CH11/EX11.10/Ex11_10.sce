//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 11.10\n\n\n");
// Chapter 11 : Heat Transfer
// Problem 11.10  (page no. 566) 
// Solution

//A bare steel pipe
ro=90; //Outside diameter //Unit:mm
ri=75; //inside diameter //Unit:mm
Ti=110; //Inside temperature //Unit:Celcius
To=40; //Outside temperature //Unit:Celcius
L=2; //Length //Unit:m
deltaT=Ti-To; //Change in temperature //Unit:Celcius
k=45 //Unit:W/(m*C) //k=proportionality constant //k=thermal conductivity
Q=(2*%pi*k*L*deltaT)/log(ro/ri); //The heat loss from the pipe  //unit:W
printf("The heat loss from the pipe is %f W",Q);

