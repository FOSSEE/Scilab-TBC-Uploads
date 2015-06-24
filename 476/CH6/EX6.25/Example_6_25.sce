//A Textbook of Chemical Engineering Thermodynamics
//Chapter 6
//Thermodynamic Properties of Pure Fluids
//Example 25


clear;
clc;


//Given:
P = 100; //pressure in bar
T = 373; //temperature in K
a = 0.453; //Vander Waal's constant (J m^3/mol^2)
b = 0.571*10^-4; //Vander Waal's constant (m^3/mol)
V = 2.072*10^-4; //molar volume (m^3/mol)
R = 8.314; //ideal gas constant

//To determine the fugacity of pure ethylene
//Using eq. 6.139 (Page no. 233)
ln_f = (b/(V-b)) - ((2*a)/(R*T*V)) + log((R*T*10^-5)/(V-b)); 
f = %e^ln_f;
mprintf('Fugacity is %f bar',f);

//end