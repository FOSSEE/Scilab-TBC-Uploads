//clc()
per1 = 20;//% ( 1 = ammonia)
Vstp = 22.4143;//m^3/kmol
Pstp = 101.325;//kPa
Tstp = 273.15;//K
V1 = 100;//m^3
P1 = 120;//kPa
T1 = 300;//K
P2 = 100;//kPa
T2 = 280;//K
per2 = 90;//% (absorbed)
N = V1 * P1 * Tstp / (Vstp * Pstp * T1);//kmol
Nair = (1 - per1 / 100) * N;
N1 = per1 * N/100;
Nabs = per2 * N1 / 100;
N2 = N1 - Nabs;//leaving
Ntotal = Nair + N2;
Vstp1 = Ntotal * Vstp;//m^3
V2 = Vstp1 * Pstp * T2 / (Tstp * P2);
disp("m^3",V2,"Volume of gas leaving = " )