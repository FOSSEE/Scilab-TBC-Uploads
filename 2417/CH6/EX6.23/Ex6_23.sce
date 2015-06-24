clear;
clc;
printf("\t\t\tProblem Number 6.23\n\n\n");
// Chapter 6: The Ideal Gas
// Problem 6.23 (page no. 265) 
// Solution

//data
deltaS=0.4386; //change in entropy //Unit:kJ/K
T2=273+425; //Celsius temperature converted to kelvin //initial temperature
cv=0.8216; //specific heat at constant volume //kJ/kg*K
m=1.5; //mass //kg
//Now,
//deltas=m*cv*log(T2/T1); 
T1=T2/(exp(deltaS/(m*cv))) //initial temperature //unit:K
printf("The initial temperature of the process is %f K or %f C\n",T1,T1-273)
