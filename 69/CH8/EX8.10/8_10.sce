clear; clc; close;

yos = 50*10^(-6);
Idss = 10*10^(-3);
Vp = -4;
Vgsq = -2.2;
Idq = 2.03*10^(-3);
Rd = 3.6*10^(3);
Rs = 1.1*10^(3);
Vi = 40*10^(-3);

gmo = 2*Idss/abs(Vp);
gm = gmo*(1-(Vgsq/Vp));
rd = 1/yos;
Zi = Rs*((rd+Rd)/(1+gm*rd))/(Rs+((rd+Rd)/(1+gm*rd)));
Zi2 = Rs*gm^(-1)/(Rs+gm^(-1));
Zo = Rd*rd/(Rd+rd);
Zo2 = Rd;
Av = (gm*Rd+(Rd/rd))/(1+Rd/rd);
Vo = Av*Vi;
Av2 = gm*Rd;
Vo2 = Av2*Vi;

disp(gm,'gm(S) = ');
disp(rd,'rd(ohms) = ');
disp(Zi,'Zi(ohms) = ');
disp(Zi2,'Zi(ohms) without rd = ');
disp(Zo,'Zo(ohms) = ');
disp(Zo2,'Zo(ohms) without rd = ')
disp(Av,'Voltage gain Av = ');
disp(Vo,'Vo = ');
disp(Av2,'Volatge gain Av(ignoring rd) = ');
disp(Vo2,'Vo2 witout rd  = ');
