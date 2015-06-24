//clc()
//CO(g) + H2O(g) = CO2(g) + H2(g)            H298 = -41.190
T1 = 298;//K
Pconv = 75;//%
T2 = 800;//K
H298 = -41.190;//kJ
Hco = 30.35;//J/molK
Hco2 = 45.64;//J/molK
Hwater = 36;//J/molK
Hh2 = 29.3;//J/molK
Nco = 1;//mol
Nh2o = 1;//mol
Ncofinal = Nco * (1 - Pconv/100);
Nwaterf = Ncofinal;
Nco2final = Nco - Ncofinal;
Nh2final = Nco2final;
H2 = (Nco2final * Hco2 + Nh2final * Hh2 + Ncofinal * Hco + Nwaterf * Hwater) * (T2 - T1);
Hr1 = H298 * (Nco - Ncofinal);
Hr2 = Hr1 * 1000 + H2;
mh2 = Nh2final * 2.016 * 10^-3;//kg
//therfore for 1000k H2,
Hr = Hr2 * 1000 / (mh2 * 1000);//kJ
disp("kJ",Hr,"Amount of heat change for 1000kg of hydrogen produced = ")