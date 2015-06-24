//A Textbook of Chemical Engineering Thermodynamics
//Chapter 6
//Thermodynamic Properties of Pure Fluids
//Example 29


clear;
clc;


//Given:
T = 350; //temperature in K
P = 60; //pressure in bar
Ps = 9.35; //vapour pressure at 350 K (bar)
V = 0.1072*10^-3; //molar volume (m^3/mol
phi = 0.834; //fugacity coeffecient
R = 8.314; //ideal gas constant

//To determine fugaity of n butane in liquid state at given conditions
f_sat = phi*Ps;
//Using eq. 6.144 (Page no. 235)
ln_phi = (V/(R*T))*(P-Ps)*10^5;
f = f_sat*%e^ln_phi;
mprintf('Fugacity of n-butane in liquid state at given conditions is %f bar',f);

//end