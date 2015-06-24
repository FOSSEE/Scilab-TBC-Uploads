//A Textbook of Chemical Engineering Thermodynamics
//Chapter 5
//Some Applications of the Laws of Thermodynamics
//Example 21


clear;
clc;


//Given:
P2 = 2800; //pressure of superheated steam (kPa)
P1 = 275; //pressure of withdrawn steam (kPa)
V = 1.070*10^-3; //specific volume of saturated liquid at 275 kPa

//From steam tables:
H6 = 138; //enthalpy of saturated liquid at 5 kPa
S6 = 0.4764; //entropy of saturated liquid at 5 kPa
H_v1 = 2562; //enthalpy of saturated vapour at 5 kPa
S_v1 = 8.3951; //entropy of saturated vapour at 5 kPa
H1 = 549; //enthalpy of saturated liquid at 275 kPa
S1 = 1.6408; //entropy of saturated liquid at 275 kPa
H_v2 = 2721; //enthalpy of saturated vapour at 275 kPa
S_v2 = 7.0209; //entropy of saturated vapour at 275 kPa
H3 = 3063; //enthalpy of superheated steam at 2800 kPa and 598 K
S3 = 6.6875; //entropy of superheated steam at 2800 kPa and 598 K

//To determine the fraction of steam withdrawn and thermal efficiency of cycle
//Referring fig. 5.23 (Page no.161)
S4 = S3; //isentropic expansion
x = (S4-S1)/(S_v2-S1); //quality of steam
H4 = H1 + x*(H_v2-H1);
H7 = H6; //as the power input to the condensate pump is neglegible

//Applying energy balance around feed water heater
m = (H1-H7)/(H4-H7); //fraction of steam extracted
mprintf('Fraction of steam withdrawn is %f',m);

W_in = V*(P2-P1); //work input to the feed water pump
H2 = H1+W_in;
//Considering isentropic expansion in turbine
S5 = S3;
x = (S5-S6)/(S_v1-S6);
H5 = H6 + x*(H_v1-H6);
//Using eq. 5.85 (Page no.162)
eff = ((H3-H2)-(1-m)*(H5-H6))/(H3-H2);
mprintf('\n Thermal efficiency is %f percent',eff*100);

//end