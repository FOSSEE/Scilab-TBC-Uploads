//clc()
//Fe(s) + 2HCl(aq) = FeCl2(aq) + H2(g)
MFe = 55.847;
m = 1;//kg
Nfe = m * 10^3/MFe;
Nh2 = Nfe;//(since 1 mole of Fe produces 1 mole of H2)
T = 300;//K
R = 8.314;
//the change in volume is equal to the volume occupied by hydrogen produced
PV = Nh2 * R * T;
W = PV;
disp("kJ",W,"Work done = ")