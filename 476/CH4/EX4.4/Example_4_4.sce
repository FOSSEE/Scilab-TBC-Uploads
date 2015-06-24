//A Textbook of Chemical Engineering Thermodynamics
//Chapter 4
//Second Law of Thermodynamics
//Example 4


clear;
clc;


//Given:
P = 500; //pressure of dry saturated steam(kPa)

//From steam tables
Hv = 2106; //latent heat of vaporisation(kJ/kg)
T = 425; //saturation temperature(K)
 
//To calculate the entropy of evaporation
//By equation 4.25 (Page no. 93)
Sv = (Hv/T); //entropy change accompanying vaporisation
mprintf('Entropy of evaporation is %f kJ/kg K',Sv);

//end