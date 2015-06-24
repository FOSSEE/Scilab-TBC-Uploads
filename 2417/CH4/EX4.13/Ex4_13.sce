//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 4.13\n\n\n");
// Chapter 4 : The Second Law Of Thermodynamics
// Problem 4.13  (page no. 161) 
// Solution

//deltas=Cp*ln(T2/T1)
//Multiplying both the sides of equation by the mass m,
//DeltaS=m*Cp*ln(T2/T1)
m=6; //mass //Unit:lbm
Cp=0.361; //Btu/lbm*R //Specific heat constant
DeltaS=-0.7062; //Unit:Btu/R //change in entropy
t=1440; //(unit:fahrenheit) 
//converting temperatures to absolute temperatures;
T1=t+460; //Unit:R
//Rearranging the equation,
T2=T1*exp(DeltaS/(m*Cp)); //final temperature //Unit:R
printf("Final temperature is %f R",T2);
printf("or %f fahrenheit",T2-460);
