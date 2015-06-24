clear ;
clc;
// Example 5.11
printf('Example 5.11\n\n');
printf('Page No. 130\n\n');

// given
T1 = 180;// in degree celcius
T2 = 350;// in degree celcius
m = 0.5;// Mass flow rate in kg/s


//from steam table
hL_180 = 302*10^3;// Specific enthalpy at 180 degree celcius in J/kg
hL_350 = 690*10^3;// Specific enthalpy at 350 degree celcius in J/kg

Q = m*(hL_350 - hL_180);// in W
printf('The required heat is %.0f W',Q)
