//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 8.8\n\n\n");
// Chapter 8 : Vapor Power Cycles
// Problem 8.8  (page no. 387) 
// Solution

//Neglecting the pump work,we have
heatrate=3413/0.273; //Unit:Btu/kWh //0.273=efficiency //1 kWh=3413 //heat rate
printf("The heat rate is %f Btu/kWh\n",heatrate);
//Per pound of steam,1515-1150.5=364.5 Btu is delivered.
//Because 1 kWh=3413
printf("The steam rate is %f lbm of steam per kilowatt-hour\n",3413/(1515-1150.5));
