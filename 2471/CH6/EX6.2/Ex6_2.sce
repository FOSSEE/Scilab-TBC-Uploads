clear ;
clc;
// Example 6.2
printf('Example 6.2\n\n');
printf('Page No. 142\n\n');

// given
v = 1.50;// velocity in m/s
N_t = 100;// Number of tubes
Do = 10*10^-3;// Internal diameter of tubes in metre
m = 3.46;// mass flow rate in kg/s
p = 1180;// density in kg/m^3

A = (N_t*%pi*Do^2)/4;// otal cross-sectional area in m^2
V = m/p;//Volumetric flow rate in m^3/s
Fv = V/A;// Fluid velocity in m/s
N_p = v/Fv;
printf('the number of passes is %.0f',N_p)
