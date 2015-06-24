//A Textbook of Chemical Engineering Thermodynamics
//Chapter 6
//Thermodynamic Properties of Pure Fluids
//Example 2


clear;
clc;


//Given:
T1 = 363; //temperature (K)
T2 = 373; //temperature (K)
P2 = 101.3; //vapour pressure at 373 K (kPa)
H = 2275*18; //mean heat of vaporisation (kJ/kmol)
R =8.314; //ideal gas constant (kJ/kmol K)

//To calculate vapour pressure of water at 363 K
//Using eq. 6.28 (Page no. 196)
P1 = P2/(%e^((H/R)*((1/T1)-(1/T2))));
mprintf(' Vapour pressure of water at 363 K is %f kPa',P1);

//end