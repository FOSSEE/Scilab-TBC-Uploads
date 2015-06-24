clear ;
clc;
// Example 5.4
printf('Example 5.4\n\n');
printf('Page No. 117\n\n');

// given
T = 25;// in degree celcius
x = 0.96;// dryness fraction
m = 3.15;// Mass flow rate in kg/s
CV = 42.6*10^6;// Calorific value in J/kg
P = 15;// Pressure in bar
n = 0.8;// Efficiency

//from steam table
hL_1 = 843*10^3;// Specific enthalpy in J/kg
hL_2 = 293*10^3;// Specific enthalpy  in J/kg
l_1 = 1946*10^3;// Latent heat of vapourisation at 70 degree celcius in J/kg

Q = m*((hL_1+(x*l_1))-hL_2);// in W
Q_Ac = Q/n// Actual heat required in Watts
Oil = Q_Ac/CV;
printf('The oil required is %.3f kg/s',Oil)
