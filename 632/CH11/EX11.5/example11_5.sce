//clc()
d = 3;//m
m = 12500;//kg
P = 7000;//kPa
U = 5.3*10^6;//kJ
Vtank = 4*%pi*((d/2)^3) / 3;
Vliq = Vtank / 2;
H = U + P * Vliq;
disp("kJ/kg",H/m,"Specific enthalpy of the fluid in the tank = ")