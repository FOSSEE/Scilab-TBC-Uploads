//A Textbook of Chemical Engineering Thermodynamics
//Chapter 6
//Thermodynamic Properties of Pure Fluids
//Example 1


clear;
clc;


//Given:
betta = 1.25*10^-3; //coeffecient of expansion (K^-1)
V = 0.1; //molar volume of organic liquid (m^3/kmol)
P2 = 20; //final pressure (bar)
P1 = 1; //initial pressure (bar)

//To determine the change in entropy of system
//betta = (1/V)*(del V/del T)p
//Let k = (del V/del T)p
k = betta*V;

//Considering Maxwell's relation Eq. 6.24 (Page no. 193)
//dS = -k*(dP)
S = -k*(P2-P1)*10^5; //entropy change (J/kmol K)
mprintf('Change in entropy is %f J/kmol K',S);
mprintf('\n It is assumed that (del V/del T)p is constant in the pressure range 1 to 20 bar');

//end