//A Textbook of Chemical Engineering Thermodynamics
//Chapter 4
//Second Law of Thermodynamics
//Example 15


clear;
clc;

//Given:
V = 1; //volume of each compartment in cubic m
T = 300; //temperature of ideal gas in 1st compartment (K)
P = 200; //pressure of ideal gas in 1st compartment (kPa)
R = 8.314; //ideal gas constant

//To calculate entropy change
//Let n be the number of moles of gas
n = ((P*V)/(R*T));
//Since gas in vessel exchanges no heat and work with surrounding so internal energy remains same
//This implies temperature after mixing is same as that before mixing

//Final conditions:
Tf = 300; //final temperature (K)
Vf = 2; //final volume (cubic m)
Pf = 100; //final pressure (kPa)

//Initial conditions:
Ti = 300; //initial temperature (K)
Vi = 1; //initial volume (cubic m)
Pi = 200; //initial pressure (kPa)

//Using equation 4.33 (Page num 94)
S = n*R*log(Vf/Vi); //entropy change of system (kJ/K)
//Since entropy of surrounding does not change
S_total = S; //total entropy change
mprintf('The change in total entropy is %f kJ/K', S_total);

//end