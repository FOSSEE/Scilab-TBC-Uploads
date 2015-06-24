clear ;
clc;
// Example 5.8
printf('Example 5.8\n\n');
printf('Page No. 122\n\n');

// given
T1 = 25;// in degree celcius
T2 = 450;// in degree celcius
m = 7.5;// Mass flow rate in kg/s

//from steam table
hL_450 = 3303*10^3;// Specific enthalpy at 450 degree celcius in J/kg
hL_25 = 105*10^3;// Specific enthalpy at 25 degree celcius in J/kg

Q = m*(hL_450 - hL_25);// in W
printf('The required heat is %.0f W',Q)// Deviation in answer due to direct substitution and some approximation in answer in book
