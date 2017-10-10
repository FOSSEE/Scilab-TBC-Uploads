//A Textbook of Chemical Engineering Thermodynamics
//Chapter 6
//Thermodynamic Properties of Pure Fluids
//Example 30


clear;
clc;


//Given: 
M = 24.32; //molecular wt of solid magnesium
T = 300; //temperature in K
P = 10; //pressure in bar
Po = 1; //reference state pressure (bar)
d = 1.745*10^3; //density of Mg at 300 K in kg/m^3
R = 8.314;
//To determine the ativity of solid magnesiun
//Using eq. 6.149 (Page no. 237)
ln_a = (M/(d*10^3*R*T))*(P-Po)*10^5;
a = %e^ln_a;
mprintf('Acivity of solid magnesium at 300 K and 10 bar is %f',a);

//end