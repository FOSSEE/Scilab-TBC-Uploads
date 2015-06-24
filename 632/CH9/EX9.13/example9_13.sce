//clc()
//Ss = solid flow rate,
Pwaterin = 25;//%
Pwaterout = 5;//%
X1 = Pwaterin/(100 - Pwaterin);//kg water/kg dry air
X2 = Pwaterout/(100 - Pwaterout);//kg water/kg dry air
//form humidity chart,
Y2 = 0.015;//kg water/kg dry air
Y1 = 0.035;//kg water/kg dry air
m = 1;//kg of dry air
//Ss * X1 + Y2 = Ss * X2 + Y1
Ss = (Y1 - Y2) / ( X1 - X2 );
T = 87.5 + 273.15;//K
P = 101.3;//kPa
Tstp = 273.15;//K
Pstp = 101.3;//kPa
Vstp = 22.4143;//m^3/mol
V = 100;//m^3
N = V * P * Tstp / ( Vstp * Pstp * T);
Nr2 = Y2 * 29 / 18;//kmol of water / kmol of dry air
Ndryair = N * 1 / (1 + Nr2);
mdryair = Ndryair * 29;
mevaporated = mdryair * ( Y1 - Y2 );
disp("kg",mevaporated,"(a)total moisture evaporated per 100m^3 of air entering = ")
Ss1 = mdryair * Ss;
mproduct = Ss1 * ( 1 + X2 );
disp("kg",mproduct,"(b)mass of finished product per 100m^3 of air entering = ")