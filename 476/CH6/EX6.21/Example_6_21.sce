//A Textbook of Chemical Engineering Thermodynamics
//Chapter 6
//Thermodynamic Properties of Pure Fluids
//Example 21


clear;
clc;


//Given:
//Eqution of state: P(V-b) = RT
P = 10; //pressure (bar)
T = 298; //temperature (K)
b = 3.707*10^-5; //Vander Waal's constant (m^3/mol)
R = 8.314; //ideal gas constant

//To estimate the fugacity of ammonia
//Since PV = RT + Pb, Z = 1 + (Pb/RT)
//Using equation 6.127 (Page no. 228)
f = P*(%e^((b*P*10^5)/(R*T)));
mprintf('Fugacity f = %f bar',f);

//end