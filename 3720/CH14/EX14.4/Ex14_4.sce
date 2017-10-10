//Example 14-4
clc;clear;
//given values
V_lobe=0.45// cm^3
n=900;//rot/min
V_closed=2*V_lobe;
n_1=0.5;//rot(rotations)

// Calculation
v=(n*V_closed)/n_1;
printf('The volume flow rate of oil,v=%0.0f cm^3/min\n',v);
