clear;
clc;
printf("\t\t\tProblem Number 6.22\n\n\n");
// Chapter 6: The Ideal Gas
// Problem 6.22 (page no. 264) 
// Solution

//data
deltas=0.0743; //change in entropy //Unit:Btu/lbm*R
T1=460+100; //Fahrenheit temperature converted to absolute initial temperature
cv=0.219; //specific heat at constant volume //Btu/lbm*R
//Now,
//deltas=cv*log(T2/T1); 
T2=T1*exp(deltas/cv); //higher temperature //absolute temperature  //unit:R
printf("The higher temperature is %f R\n",T2)
