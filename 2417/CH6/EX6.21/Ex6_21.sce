clear;
clc;
printf("\t\t\tProblem Number 6.21\n\n\n");
// Chapter 6: The Ideal Gas
// Problem 6.21 (page no. 264) 
// Solution

//data
T2=100+273; //Celsius temperature converted to Kelvin //final temperature
T1=20+273; //Celsius temperature converted to Kelvin //initial temperature
cv=0.7186; //specific heat at constant volume //kJ/kg*K
//Now,
deltas=cv*log(T2/T1); //change in entropy //Unit:kJ/kg*K
//For 0.2 kg,
deltaS=(0.2)*deltas; //The change in enthalpy in kJ/K
printf("For 0.2 kg of air,The change in enthalpy is %f kJ/K\n",deltaS);
