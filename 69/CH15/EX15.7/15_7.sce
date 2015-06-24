clear; clc; close;

Rl = 5*10^(3);
R = 500;
Vdc = 150;
C = 10*10^(-3);
Vr_rms = 15;

Vdc_dash = (Rl/(R+Rl))*Vdc;
Xc = 1.3/C;
Vr_rms_dash = (Xc/R)*Vr_rms; 
r = (Vr_rms_dash/Vdc_dash)*100;

disp(Vdc_dash,'Dc component of output voltage = ');
disp(Vr_rms_dash,'Ac component of output voltage = ');
disp(r,'Ripple = ');
