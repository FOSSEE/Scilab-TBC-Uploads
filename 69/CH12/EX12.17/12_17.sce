clear; clc; close;

Pd_temp0 = 80;
T1 = 100;
T0 = 25;
D = 0.5;


Pd_temp1 = Pd_temp0-(T1-T0)*(D);

disp(Pd_temp1,'Maximum power dissipation(Watts) = ');
