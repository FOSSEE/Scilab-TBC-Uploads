clear ;
clc;
// Example 5.5
printf('Example 5.5\n\n');
printf('Page No. 120\n\n');

// given
T1 = 134;// in degree celcius
T2 = 100;// in degree celcius
x = 0.96;// dryness fraction
m = 0.75;// Mass flow rate in kg/s

//from steam table
hL_134 = 563*10^3;// Specific enthalpy at 134 degree celcius in J/kg
hL_100 = 419*10^3;// Specific enthalpy at 100 degree celcius in J/kg
l_134 = 2162*10^3;// Latent heat of vapourisation at 134 degree celcius in J/kg

Q = m*((hL_134+(x*l_134))-hL_100);// in W
printf('The required heat is %.0f W',Q)// Deviation in answer due to direct substitution and some approximation in answer in book

