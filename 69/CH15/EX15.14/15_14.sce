clear; clc; close;

Vm = 15;
Vi_min = 7.3;
C = 250*10^(-6);

Vr_peak = Vm - Vi_min;
Vr_rms = Vr_peak/sqrt(3);

Idc = Vr_rms*C/(2.4*(10^-3));

disp(Idc,'Max value of load current = ');
