//clc()
//CH3OH(l) + 3/2O2(g) = CO2(g) + 2H2O(l)         H = -726.55kJ
H1 = -726.55;//kJ
Hco2 = -393.51;//kJ/mol
Hh2o = -285.84;//kJ/mol
Hch3oh = Hco2 + 2 * Hh2o - H1;
disp("kJ",Hch3oh,"Heat of formation of liquid methanol = ")