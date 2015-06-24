//A Textbook of Chemical Engineering Thermodynamics
//Chapter 4
//Second Law of Thermodynamics
//Example 13


clear;
clc;

//Given:
H_steam = 2923.5; //enthalpy of superheated steam (kJ/kg)
S_steam = 6.71; //entropy of superheated steam (kJ/kg K)
H_liquid = 845; //enthalpy of saturated liquid (kJ/kg)
S_liquid = 2.32; //entropy of saturated liquid (kJ/kg K)
T = 300; //temperature of system (K)

//To calculate change in entropy and check whether the process is reversible

S_system = S_liquid-S_steam; //change in entropy of steam

//Let Q be the heat given out during condensation
Q = -(H_liquid-H_steam);
S_surrounding = Q/T; //change in entropy of the surrounding
S_total = S_system+S_surrounding; //total entropy change
mprintf('The total entropy change is %f kJ/kg',S_total);
mprintf('\nSince total entropy change is positive,the process is irreversible');

//end