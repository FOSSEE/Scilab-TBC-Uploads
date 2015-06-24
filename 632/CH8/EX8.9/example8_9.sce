//clc()
T = 300;//K
T1 = 285;//K
Pwater = 3.56;//kPa
Pwater1 = 1.4;//kPa
V = 1;//m^3 ( Basis )
Vstp = 22.4143;//m^3/kmol
N = V / Vstp;
Pstp = 101.3;//kPa
Y = Pwater / (Pstp - Pwater);
Y1 = Pwater1 / (Pstp - Pwater1);
Nremoved = Y - Y1;
Ndryair = N * 1 / (1 + Y);
mremoved = Ndryair * Nremoved * 18.016;
disp("kg",mremoved,"(a)amount of water removed = ")
Nremaining = Ndryair * Y1 ;
V1 = (Ndryair + Nremaining) * Vstp ;
disp("m^3",V1,"(b)Volume of gas at stp after drying = ")