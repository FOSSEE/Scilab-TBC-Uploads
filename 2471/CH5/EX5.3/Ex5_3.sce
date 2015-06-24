clear ;
clc;
// Example 5.3
printf('Example 5.3\n\n');
printf('Page No. 117\n\n');

// given
T1 = 25;// in degree celcius
T2 = 212;// in degree celcius
x = 0.96;// dryness fraction
m = 1.25;// Mass flow rate in kg/s

//from steam table
hL_212 = 907*10^3;// Specific enthalpy at 212 degree celcius in J/kg
hL_25 = 105*10^3;// Specific enthalpy at 25 degree celcius in J/kg
l_212 = 1890*10^3;// Latent heat of vapourisation at 212 degree celcius in J/kg

Q = m*((hL_212+(x*l_212))-hL_25);// in W
printf('The required heat is %.0f W',Q)
