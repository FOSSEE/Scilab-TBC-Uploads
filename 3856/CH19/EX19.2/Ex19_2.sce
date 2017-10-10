//Calculate the Partial pressure of Oxygen at an altitude of 30 km (stratosphere)

//Example 19.2

clc;

clear;

Po=0.20; //Partial pressure of Oxygen at an sea level in atm

g=9.81; //Gravitational constant in m s^-2

h=30*10^3; //height in m

mew=0.03200; //Molar mass of Oxygen molucule in kg mol^-1

R=8.314; //Gas constant in J K^-1 mol^-1

T=25+273;  //Temperarure in K

P=Po*(exp(-(g*mew*h)/(R*T))); //Partial pressure of Oxygen at an altitude of 30 km (stratosphere)in atm

printf("Partial pressure of Oxygen at an altitude of 30 km = %.1f*10^-3 atm",P*10^3);


