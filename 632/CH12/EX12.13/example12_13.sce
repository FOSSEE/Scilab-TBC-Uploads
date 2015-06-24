//clc()
//CO(g) + 2H2(g) = CH3OH(g)
T1 = 298;//K
T2 = 1073;//K
//Cp(CH3OH) = 18.382 + 101.564 * 10^-3 * T - 28.683 * 10^-6 * T^2
//Cp(CO) = 28.068 + 4.631 * 10^-3 * T - 2.5773 * 10^4 * T^-2
//Cp(H2)  = 27.012 + 3.509 * 10^-3 * T + 6.9006 * 10^4 * T^-2
//for reactants,
H1 = integrate('28.068 + 4.631 * 10^-3 * T - 2.5773 * 10^4 * T^-2','T',T2,T1) + 2 * integrate('27.012 + 3.509 * 10^-3 * T + 6.9006 * 10^4 * T^-2','T',T2,T1);
//for product,
H2 = integrate('18.382 + 101.564 * 10^-3 * T - 28.683 * 10^-6 * T^2','T',T1,T2);
//H298 = Hproducts - Hreactants;
//CO + 2H2 = CH3OH            Ha1 = -238.64kJ
Ha1 = -238.64;//kJ
//CH3OH(l) = CH3OH(g)         Hvap = 37.98kJ
Hvap = 37.98;//kJ
//CO(g) + 2H2(g) = CH3OH(g)   Ha2 = -200.66kJ
Ha2 = Ha1 + Hvap;//kJ
Hco = -110.6;//kJ/mol
H298 = Ha2 - (Hco);
Htotal = H1/1000 + H298 + H2/1000;
disp("kJ/mol",Htotal,"The heat of reaction at 773K = ")