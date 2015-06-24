//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 8.6\n\n\n");
// Chapter 8 : Vapor Power Cycles
// Problem 8.6  (page no. 385) 
// Solution

//For the upper temperature of the cycle,we have 400C,and for 50kPa,the steam tables give us a saturation temperature of 81.33C.The efficiency of a Carnot cycle operating between the limits would be
T1=400+273; //Celcius temperature converted to fahrenheit temperature
T2=81.33+273; //temperature converted to fahrenheit temperature
nc=((T1-T2)/T1)*100; //Efficiency of carnot cycle
printf("The efficiency is %f percentage\n",nc);
//In problem 8.1,
nR=28.5; //Thermal efficiency of the cycle neglecting the pump work
typen=(nR/nc)*100; //Type efficiency=ideal thermal efficiency/efficiency of carnot cycle operating between min and max temperature limits
printf("The type efficiency of the ideal Rankine cycle is %f percentage\n",typen);
