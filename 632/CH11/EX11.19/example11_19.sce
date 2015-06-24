//clc()
T1 = 363;//K
T2 = 373;//K
P1s = 70.11;//kPa
P2s = 101.3;//kPa
R = 8.314;//kJ/kmolK
// ln(P2s / P1s) = Hv / R * (1/T1 - 1/T2);
Hv = (log(P2s/P1s)*R)/(1/T1 - 1/T2);
Hv1 = Hv / (18);
disp("kJ/kg",Hv1,"Mean heat of vaporization = ")