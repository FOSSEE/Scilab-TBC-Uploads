//A Textbook of Chemical Engineering Thermodynamics
//Chapter 2
//First Law of Thermodynamics
//Example 6


clear;
clc;


//Given:
T = 233; //temperature in K
VP = 1.005*10^3; //vapour pressure of CO2 in kPa
sv_liquid = 0.9*10^-3; //specific volume of liquid CO2 in m^3/kg
sv_vapour = 38.2*10^-3; //specicific volume of CO2 vapour in m^3/kg
L = 320.5; //latent heat of vaporisation of CO2 in kJ/kg
//Assuming at these conditions CO2 is saturated liquid so
H1 = 0; //enthalpy in liquid state

//To find internal energy of saturated liquid and internal energy and enthalpy of saturated vapour
//For saturated liquid
U1 = H1-(VP*sv_liquid); // internal energy in liquid state in kJ/kg
//For saturated vapour
Hv = H1+L; //enthalpy of saturated vapour in kJ/kg
Uv = Hv-(VP*sv_vapour); //internal energy in vapour state in kJ/kg
mprintf('Internal Energy of saturated liquid is %f kJ/kg',U1);
mprintf('\nEnthalpy of vapour state is %f kJ/kg',Hv);
mprintf('\nInternal Energy of vapour state is %f kJ/kg',Uv);

//end