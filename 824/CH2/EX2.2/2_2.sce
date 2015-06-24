//clear//
clc
clear
exec("2.2data.sci");
CA0=(yA0*P0)/(R*T0);
FA0 = CA0*v0;
V = FA0*X*(1/-rA)

disp("FA0 =")
disp(FA0)
disp("mol/s")
disp("V =")
disp(V)
disp ("dm^3")
