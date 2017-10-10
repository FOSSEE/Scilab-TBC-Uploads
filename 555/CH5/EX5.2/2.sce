// Implementation of example 5.2
// Basic and Applied Thermodynamics by P.K.Nag

clc
clear

//Work done W, Velocity V, Pressure p, Specific volume v, Height Z
W = 135;//kJ/kg
Q = - 9;//kJ/kg
v1 = 0.37; //m^3/kg
p1 = 600;//kPa
V1 = 16;//m/s
Z1 = 32;//m
v2 = 0.62;
p2 = 100;
V2 = 270;
Z2 = 0;
g = 9.81;//m/s^2
//First law: 
//u1 + p1v1 + V1^2/2 + Z1g + dQ/dm = u2+ p2v2 + V2^2/2 + Z2g + dW/dm
//Change in specific internal energy 'dU'
dU = (p2*v2 - p1*v1) + (V2^2 - V1^2)*10^(-3)/2 + (Z2 - Z1)*g*10^(-3) + W - Q;
if(dU>0)
  printf('Specific internal energy decreases by %0.3f kJ',dU);
else
  printf('Specific internal energy increases by %0.3f kJ',-dU);
end
// end