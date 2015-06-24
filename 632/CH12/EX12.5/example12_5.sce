//clc()
//C2H4(g) + H2O(g) = C2H5OH(g)
//2CO2(g) + 3H2O(l) = C2H5OH(l) + 3O2(g)     H = 1366.91kJ  (A)
Hc2h4 = -1410.99;//kJ/mol
Hvap = 44.04;//kJ/mol
Hc2h5oh = 42.37;//kJ/mol
//C2H4(g) + 3H2O(l) = C2H5OH(l) + 3O2(g)     H = -1410.99kJ (B)
//H2O(l) = H2O(g)                            H = 44.04kJ    (C)
//C2H5OH(l) = C2H5OH(g)                      H = 42.37kJ    (D)
//A + B + D - C gives the required reaction
Ha = 1366.91;//kJ
Hb = -1410.99;//kJ
Hc = 44.04;//kJ
Hd = 42.37;//kJ
Hreac = Ha + Hb + Hd - Hc;
disp("kJ",Hreac,"The standard heat of reaction = ")
