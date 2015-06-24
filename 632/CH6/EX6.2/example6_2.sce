//clc()
T1 = 363;//K
T2 = 373;//K
P2s = 101.3;//kPa
J = 2275 * 18;//kJ/kmol
R = 8.314;//kJ/kmolK
//ln (P2s/P1s) = J * (1/T1 - 1/T2) / R
P1s = P2s/exp(J * (1/T1 - 1/T2) / R);
disp("kPa",P1s,"Vapour pressure of water at 363 K = ")