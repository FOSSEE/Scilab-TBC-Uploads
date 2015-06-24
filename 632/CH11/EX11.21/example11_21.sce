//clc()
Hv1 = 2256;//kJ/kg
T1 = 373;//K
T2 = 473;//K
Tc = 647;//K
Tr1 = T1 / Tc;
Tr2 = T2 / Tc;
//Hv2 / Hv1 = ((1-Tr2)/(1-Tr1))^0.38
Hv2 = Hv1*(((1-Tr2)/(1-Tr1))^0.38);
disp("kJ/kg",Hv2,"Latent heat of vaporization of water at 473K = ")