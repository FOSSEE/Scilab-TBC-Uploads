//clc()
Ca = 1.884;//kJ/kgK
Cb = 1.005;//kJ/kgK
Y1 = 0.012;
//Cs = Cb + Y1 * Ca
Cs = Cb + Y1 * Ca;
disp("kJ/kgK",Cs,"Humid heat of the sample = ")
P = 101.3;//kPa
V = 100;//m^3
R = 8.314;
T = 328;//K
T1 = 373;//K
N = P * V / ( R * T );
Pa = 1.921;//kPa
Ndryair = N * (P - Pa)/P;
mdryair = Ndryair * 29;
Ht = mdryair * Cs * (T1 - T);
disp("kJ",Ht,"Heat to be supplied = ")