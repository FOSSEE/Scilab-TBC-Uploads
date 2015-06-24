//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 8.5\n\n\n");
// Chapter 8 : Vapor Power Cycles
// Problem 8.5  (page no. 385) 
// Solution

//The Carnot cycle would operate between 982.4F and 212F.
T1=982.4+460; //temperature converted to absolute temperature //Unit:R
T2=212+460; //temperature converted to absolute temperature //Unit:R
nc=((T1-T2)/T1)*100; //Efficiency of carnot cycle
printf("The efficiency is %f percentage\n",nc);
//In problem 8.3,
nR=27.3; //Thermal efficiency of the cycle neglecting the pump work
typen=(nR/nc)*100; //Type efficiency=ideal thermal efficiency/efficiency of carnot cycle operating between min and max temperature limits
printf("The type efficiency of the ideal Rankine cycle is %f percentage\n",typen);
