clear; clc; close;

Idc = 400*10^(-3);
C = 250*10^(-6);
Vm = 15;
Vdc = 15;

Vr_peak = sqrt(3)*2.4*(10^-3)*Idc/C;
Vi = Vdc - Vr_peak;

disp(Vi,'Minimum input voltage = ');
