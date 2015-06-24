//A Textbook of Chemical Engineering Thermodynamics
//Chapter 6
//Thermodynamic Properties of Pure Fluids
//Example 22


clear;
clc;


//Given:
//intg(alphadP) = -556.61 J/mol
P = 50; //pressure in bar
T = 300; //temperature in K
R = 8.314; //ideal gas constant

//To determine the fugacity of gas
//Using equation 6.130 (Page no. 230)
f = P*%e^(-556.61/(R*T));
mprintf('Fugacity of gas at 50 bar and 300 K is %i bar',f);

//end