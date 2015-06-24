//A Textbook of Chemical Engineering Thermodynamics
//Chapter 6
//Thermodynamic Properties of Pure Fluids
//Example 26


clear;
clc;


//Given:
T = 623; //temperature in K

//Data from steam tables:
H = 3159; //enthalpy at 1000 kPa and 623 K (kJ/kg)
S = 7.3; //entropy at 1000 kPa and 623 K (kJ/kg K)
Ho = 3176; //enthalpy at 101.3 kPa and 623 K (kJ/kg)
So = 8.38; //entropy at 101.3 kPa and 623 K (kJ/kg K)
fo = 101.3; //fugacity at 101.3 kPa (kPa)
R = 8.314/18; //ideal gas consatnt (kJ/kg K)

//To determine fugacity and fugacity coeffecient of steam
ln_phi = (1/(R*T))*((H-Ho)-T*(S-So));
f = fo*%e^ln_phi;
phi = f/fo;
mprintf('Fugacity of steam is %f bar',f/100);
mprintf('\n Fugacity coeffecient is %f',phi);

//end