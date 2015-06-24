clear;
clc;
printf("\t\t\tProblem Number 6.20\n\n\n");
// Chapter 6: The Ideal Gas
// Problem 6.20 (page no. 264) 
// Solution

//data
T2=460+270; //Fahrenheit temperature converted to absolute final temperature //unit:R
T1=460+70; //Fahrenheit temperature converted to absolute initial temperature //unit:R
cv=0.17; //specific heat at constant volume //Btu/lbm*R
//Now,
deltas=cv*log(T2/T1); //change in entropy //Unit:Btu/lbm*R
//For 1/2 lb,
deltaS=(1/2)*deltas; //The change in enthalpy in Btu/R
printf("For 1/2 lb of gas,The change in enthalpy is %f Btu/R\n",deltaS);
