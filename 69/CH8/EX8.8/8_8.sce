clear; clc; close;

yos = 25*10^(-6);
Idss = 8*10^(-3);
Vp = -6;
Vgsq = -2.6;
Idq = 2.6*10^(-3);
Rg = 1*10^(6);
Rd = 3.3*10^(3);
Rs = 1*10^(3);

gmo = 2*Idss/abs(Vp);
gm = gmo*(1-(Vgsq/Vp));
rd = 1/yos;
Zi = Rg;
Zo = Rd;
Av = -gm*Rd/(1+gm*Rs+((Rd+Rs)/rd));
Av2 = -gm*Rd/(1+gm*Rs);

disp(gm,'gm(S) = ');
disp(rd,'rd(ohms) = ');
disp(Zi,'Zi(ohms) = ');
disp(Zo,'Zo(ohms) = ');
disp(Av,'Voltage gain Av = ');
disp(Av2,'Volatge gain Av(ignoring rd) = ');

