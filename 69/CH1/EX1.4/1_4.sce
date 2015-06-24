clear; clc; close;

Tc = 0.072;// %/'C
Vz = 10;//V
T1 = 100;// 'C
T0 = 25;// 'C

Delta_Vz = Tc*Vz*(T1-T0)/100;

Vz_new = Vz + Delta_Vz;

disp(Delta_Vz,'Change in zener potential(in V):');
disp(Vz_new,'Resulting zener potntial(in V):');

