//clc()
m = 1;//kg
u2 = 0.5;//m/s
u1 = 60;//m/s
H = -3000;//kJ/kg
//KE = (u^2)/2
KE = ((u2 ^ 2) - (u1^2))/2000;
g = 9.81;//m/s^2
Z1 = 7.5;//m
Z2 = 2;//m
//PE = g * (Z)
PE = g * (Z2 - Z1)/1000;
W = 800;//kJ/kg
Q = H + PE + KE + W;
disp("kJ/kg",Q,"Heat removed from the fluid = ")