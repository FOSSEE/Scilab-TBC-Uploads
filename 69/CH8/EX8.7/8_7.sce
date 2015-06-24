clear; clc; close;

yos = 20*10^(-6);
Idss = 10*10^(-3);
Vp = -8;
Vgsq = -2;
Idq = 5.625*10^(-3);
Rg = 1*10^(6);
Rd = 2*10^(3);

gmo = 2*Idss/abs(Vp);
gm = gmo*(1-(Vgsq/Vp));
rd = 1/yos;
Zi = Rg;
Zo = Rd*rd/(Rd+rd);
Av = -gm*(Rd*rd/(Rd+rd));
Av2 = -gm*Rd;

disp(gm,'gm(S) = ');
disp(rd,'rd(ohms) = ');
disp(Zi,'Zi(ohms) = ');
disp(Zo,'Zo(ohms) = ');
disp(Av,'Voltage gain Av = ');
disp(Av2,'Volatge gain Av(ignoring rd) = ');

