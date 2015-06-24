//clc()
P1s = 194.9;//kPa
P2s = 8.52;//kPa
T1 = 353;//K
T2 = 273;//K
T3 = 300;//K
Pair = 101.3;//kPa
//log (P2s/P1s) = J * (1/T1 - 1/T2) / R
//let J / R = L
L = log (P2s/P1s)/(1/T1 - 1/T2);
P3s = P1s * exp(L * (1/T1 - 1/T3)) ;
Ptotal = P3s + Pair;//at saturation vapour pressure = partial pressure
disp("kPa",Ptotal,"(a)Final pressure of the mixture = ")
MP = P3s * 100 / Ptotal;
// mole percent = moles of acetone * 100 / total moles
//= Partial pressure of acetone * 100 / total Pressure
disp("%",MP,"(b)Mole percent of acetone in the final mixture = ")