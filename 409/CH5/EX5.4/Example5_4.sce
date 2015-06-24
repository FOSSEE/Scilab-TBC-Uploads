clear ;
clc;
// Example 5.4
printf('Example 5.4\n\n');
//Page no. 115
// Solution

df = 1.10*10^3 ;//[kg/m^3]
d = 1.0*10^3 ;//[kg/m^3]
g = 9.8 ;//[m/s^2]
h = 22.0 ;//[mm]
dP = (df-d)*g*(h*10^(-3)) ;//[Pa]
printf('Pressure difference across the orifice plate is %.1f Pa.\n',dP);