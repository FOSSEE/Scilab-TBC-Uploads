//A Textbook of Chemical Engineering Thermodynamics
//Chapter 6
//Thermodynamic Properties of Pure Fluids
//Example 28


clear;
clc;


//Given:
T = 303; //temperature in K
P = 10; //pressure in bar
Ps = 4.241/100; //saturation pressure (bar)
sp_vol = 1.004 *10^-3; //specific volume at 303 K (m^3/kg)
R = 8.314; //ideal gas constant

//To calculate the fugacity of liquid water
V = sp_vol*10^-3*18; //molar volume (m^3/mol)

//Assuming vapour behaves as an ideal gas
f_sat = Ps;
//Using Eq. 6.144 (Page no. 235)
ln_phi = (V/(R*T))*(P-Ps)*10^5;
f = f_sat*%e^ln_phi;
mprintf('Fugacity of liquid water at given conditions is %f bar',f);

//end