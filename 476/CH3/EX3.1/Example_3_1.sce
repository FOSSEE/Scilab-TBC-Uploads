//A Textbook of Chemical Engineering Thermodynamics
//Chapter 3
//P-V-T Behaviour and Heat Effects
//Example 1


clear;
clc;


//Given:
T = 350; //temperature in K
P = 10^5; //pressure in N/m^2
R = 8.314; //ideal gas constant

//To find the molar volume of air

V = (R*T)/P; //molar volume in m^3
mprintf('Molar volume of air is %3.2e cubic m/mol',V);

//end