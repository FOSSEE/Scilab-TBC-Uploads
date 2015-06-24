//A Textbook of Chemical Engineering Thermodynamics
//Chapter 5
//Some Applications of the Laws of Thermodynamics
//Example 17


clear;
clc;


//Given:
//Referring steam tables at 2.54 bar
H1 = 2717; //enthalpy of saturated vapour (kJ/kg)
H2 = 538; //enthalpy of saturated liquid (kJ/kg)
S1 = 7.05; //entropy of saturated vapour (kJ/kg K)
S2 = 1.61; //entropy of saturated liquid (kJ/kg K)

H = 2700; //enthalpy of superheated steam at 1 bar and 385 K (kJ/kg)
S = 7.42; //entropy of superheated steam at 1 bar and 385 K (kJ/kg K)

//To determine fraction of liquid in inlet stream and the temperature
//Let the fraction of liquid in inlet stream be x

//(a)..The expansion is isenthalpic
//Applying enthalpy balance around the throttle valve
//(x*H2)+(1-x)*H1 = H
x = (H-H1)/(H2-H1);
//From steam tables
T = 401; //temperature of steam (K)
mprintf('(a). For isenthalpic expansion');
mprintf('\n The fraction of liquid in inlet stream is %f',x);
mprintf('\n The temperature of stream is %i K',T);

//(b)..The expansion is isentropic
//Since entropy of saturated vapour at inlet pressure (S1) is less than entropy of steam leaving the turbine (S)
//So, the inlet stream is superheated, therefore
x = 0;
//From steam tales
T = 478; //temperature of superheated steam having entropy of 7.42 kJ/kg K
mprintf('\n\n(b). For isentropic expansion');
mprintf('\n The fraction of liquid in inlet stream is %i',x);
mprintf('\n The temperature of stream is %i K',T);

//end