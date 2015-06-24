//clc()
//C2H5(g) + 5/2O2(g) = 2CO2(g) + H2O(l)             H1 = -1299.6kJ    (A)
//C(s) + O2(g) = CO2(g)                             H2 = -393.51kJ    (B)
//H2(g) + 1/2O2(g) = H2O(l)                         H3 = -285.84kJ    (C)
//2C(s) + H2(g) = C2H2(g)                           H = ?
H1 = -1299.6;//kJ
H2 = -393.51;//kJ
H3 = -285.84;//kJ
Hreac = 2 * H2 + H3 - H1;
disp("kJ",Hreac,"Heat of formation of acetylene = ")