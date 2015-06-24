//A Textbook of Chemical Engineering Thermodynamics
//Chapter 6
//Thermodynamic Properties of Pure Fluids
//Example 10


clear;
clc;


//Given:
betta = 1.8*10^-4; //coeffecient of volume expansion (K^-1)
k = 3.9*10^-6; //coeffecient of compressibility (bar^-1)
T = 273; //temperature in K
d = 13.596*10^3; //density (kg/m^3)
Cp = 0.14*10^3; //(J/kg K)

//To calculate Cv for mercury
//Using equation 6.55 (Page no. 208)
Cv = Cp - (betta^2*T*10^5)/(k*d);

mprintf('Cv for mercury is %f J/kg K',Cv);

//end