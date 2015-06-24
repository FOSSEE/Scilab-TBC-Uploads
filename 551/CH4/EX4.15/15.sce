clc
Q=50; //kJ
dV=0.14; //m^3
p=1.2*10^5; //N/m^2
m=90; //kg
d=5.5; //m
g=9.8; //m/s^2
W_adb = -110; //kJ
Wnet=m*g*d/1000; //kJ


disp("(i)Change in internal energy")
W=p*dV/1000 + Wnet; //kJ
dE=Q-W;
disp("dE=")
disp(dE)
disp("kJ")

disp("(ii) Adiabatic process")
Q=0;
dE=-W_adb;
disp("dE=")
disp(dE)
disp("kJ")

disp("(iii)Change in internal energy")
Q=50; //kJ
dE=Q - [W_adb+W];
disp("dE=")
disp(dE)
disp("kJ")