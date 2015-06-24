//clc()
P = 101.3;//kPa
SVl = 1.04 * 10^-3;//m^3/kmol
SVg = 1.675;//m^3/kmol
Q = 1030;//kJ
W = P * 10^3 * (SVg - SVl)/1000;
U = Q - W;
H = U +  P * 10^3 * (SVg - SVl)/1000;
disp("kJ/kmol",U,"Change in internal energy = ")
disp("kJ/kmol",H,"Change in enthalpy = ")