clear; clc; close;

Vo = 8;
Vo_1 = 12*10^(-3);
Vd = 1*10^(-3);
Vc = 1*10^(-3);


Ad = Vo/Vd;
Ac = Vo_1/Vc;
CMRR = Ad/Ac;
CMRR = 20*log10(Ad/Ac);

disp(CMRR,'CMRR(dB) = ');

