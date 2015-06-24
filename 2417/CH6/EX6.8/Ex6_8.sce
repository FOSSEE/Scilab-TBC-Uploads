clear;
clc;
printf("\t\t\tProblem Number 6.8\n\n\n");
// Chapter 6: The Ideal Gas
// Problem 6.8 (page no. 246) 
// Solution

//For CO2,
R=8.314/44; //Unit:kJ/kg*K //constant of proportionality //Molecular weight of CO2=44
p=500; //Unit:kPa //pressure
V=0.5; //Unit:m^3 //volume
T=(100+273); //Unit:K //Celsius converted to kelvin
//Applying p*V=m*R*T ,
m=(p*V)/(R*T); //mass //kg //ideal gas law
printf("The mass of gas in the tank is %f kg\n",m);
