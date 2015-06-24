//clc()
N = 100;//mol fuel gas
Nco = 21;
Nh2 = 15.6;
Nco2 = 9.0;
Nch4 = 2;
Nc2h4 = 0.4;
Nn2 = 52;
Hco = 282.99;//kJ/mol ( heat of combustion )
Hh2 = 285.84;//kJ/mol ( heat of combustion )
Hch4 = 890.4;//kJ/mol ( heat of combustion )
Hc2h4 = 1410.99;//kJ/mol ( heat of combustion )
Hvap = 44.04;//kJ/mol
H = Nco * Hco + Nh2 * Hh2 + Nch4*Hch4 + Nc2h4*Hc2h4;//kJ
V = N * 22.4143/1000;
H1 = H / V;//kJ/m^3
//on combustion, 1 mol hydrogen gives 1 mol of water, 1 mol of methane gives 2 mol of water and 1 mol of ethylene gives 2 moles of water
Nwater = Nh2 + 2 * Nch4 + 2 * Nc2h4;
Hvap1 = Hvap * Nwater;
Hnet = H1 - Hvap1;
disp("kJ",Hnet,"Net heating value of the fuel = ")