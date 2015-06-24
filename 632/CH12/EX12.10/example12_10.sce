//clc()
// C5H12(g) + 8O2(g) = 5CO2(g) + 6H20(l)
Hfco2 = -393.51;//kJ
Hfh2o = - 241.826;//kJ
Hfc5h12 = -146.4;//kJ
Hvap = 43.967;//kJ/mol
H1 = 6*Hfh2o +5*Hfco2 - Hfc5h12;
H2 = 6 * (-Hvap);
Hreac = H1 + H2;
disp("kJ",Hreac,"Standard heat of reaction = ")