clear; clc; close;

//part a 
Idc = 50*10^(-3);
C = 100*10^(-6);

Vr_rms = 2.4*(10^-3)*Idc/(C);

disp(Vr_rms,'Ripple voltage = ');

//part b

Rl = 100;

Vdc = Vr_rms*Rl*C/2.4;

disp(Vdc,'Output voltage = ');
