//clc()
m = 1;//kg of oil burned
mc = 0.9;//kg
mh2 = 0.1;//kg
Mc = mc / 12;//kmol
//C(s) + O2(g) = CO2(g)
Nh2 = mh2 / 2.016;//kmol
//change in the no. of gaseous components accompanying the combustion of 1 mole of hydrogen in liquid state is -1/2 mol, therefore for Nh2 mol
R = 8.314;
T = 298;//K
x = Nh2 * R * T / (-2);
Qv = -43000;//kJ/kg
Qp = Qv + x;
disp("kJ/kg",Qp,"the constant pressure heat of combustion = ")