// Example 4_1
clc;funcprot(0);
// Given data
p_1=10.0;// psia
x_1=1.00;// The quality of saturated vapor
V_1=25000;// mph
Z_1=200;// miles
v_1=38.42;// ft^3/lbm
m=3.0;// lbm
u_2=950.0;// The final specific internal energy in Btu/lbm
v_2=v_1;;// ft^3/lbm
g=32.174;// The acceleration due to gravity in m/s^2

// Solution
// Table C.2a in Thermodynamic Tables to accompany Modern Engineering Thermodynamics gives
u_1=1072.2;// Btu/lbm
U_1=m*u_1;// Btu
U_2=m*u_2;// Btu
E_T=(U_2-U_1)-([((m/2)*(V_1*(5280/3600))^2)]*((1/(g*778.16))))-[((m*g)/g)*Z_1*5280/778.16];// Btu
printf('\nThe energy transport is required to decelerate the water to zero velocity and bring it down to the surface of the Earth,E_T=%5.0f Btu',E_T);
