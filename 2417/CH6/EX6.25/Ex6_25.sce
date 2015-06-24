clear;
clc;
printf("\t\t\tProblem Number 6.25\n\n\n");
// Chapter 6: The Ideal Gas
// Problem 6.25 (page no. 268) 
// Solution

//data given
T2=500+273; //Celsius temperature converted to Kelvin //final temperature
T1=20+273; //Celsius temperature converted to Kelvin //initial temperature
cp=1.0062; //specific heat at constant pressure //kJ/kg*K
//From the energy equation for the constant-pressure process,the heat transferred is deltah.Therefore,
//q=deltah=cp*(T2-T1)
deltah=cp*(T2-T1); //heat transferred //kJ/kg //into system
printf("The heat transferred is per kilogram of air %f kJ/kg\n",deltah);
deltas=cp*log(T2/T1); //increase in entropy //kJ/kg*K
printf("The increase in entropy per kilogram of air is %f kJ/kg*K\n",deltas);
