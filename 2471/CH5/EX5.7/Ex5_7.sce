clear ;
clc;
// Example 5.7
printf('Example 5.7\n\n');
printf('Page No. 121\n\n');

// given
x = 0.97;// dryness fraction
m = 4.0;// Mass flow rate in kg/s
v = 40;// velocity in m/s
P = 10;// pressure in bar

//from steam table
Sp_vol = 0.194;// specific volume at 10 bar dry steam in m^3/kg

Q = Sp_vol*x*m// Volumetric flow rate of steam in m^3/s
d = sqrt((Q*m)/(v*%pi));
printf('the required diameter of pipe is %.3f m',d)
