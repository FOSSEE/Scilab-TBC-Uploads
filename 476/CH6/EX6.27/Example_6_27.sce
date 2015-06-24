//A Textbook of Chemical Engineering Thermodynamics
//Chapter 6
//Thermodynamic Properties of Pure Fluids
//Example 27


clear;
clc;


//Given:
T = 473; //temperature in K
P = 50*10^5; //pressure in Pa
d = 24.3; //density of ammonia (kg/m^3)
m = 17; //molecular wt of ammonia
R = 8.314; //ideal gas constant

//To estimate the fugacity of ammonia
V = m/(d*1000); //molar volume of ammonia (m^3/kmol)
//Using eq. 6.142 (Page no. 234)
f = (V*(P^2))/(R*T);
mprintf('The fugacity of ammonia is %f bar',f/10^5);

//end