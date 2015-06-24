//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 4.8\n\n\n");
// Chapter 4 : The Second Law Of Thermodynamics
// Problem 4.8  (page no. 157) 
// Solution

//For reversible isothermal process,
q=843.7; //Heat //Unit:Btu //at 200 psia
t=381.86; //(unit:fahrenheit) //temperature
////converting temperatures to absolute temperatures;
T=t+460; //temperature //unit:R
deltaS=(q/T); //Change in entropy  //Unit:Btu/lbm*R
printf("Change in entropy is %f  Btu/lbm*R\n",deltaS); //1 LBm of saturated water
