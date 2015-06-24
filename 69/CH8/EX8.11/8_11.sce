clear; clc; close;

yos = 10*10^(-6);
Idss = 6*10^(-3);
Vp = -3;
Vgsq = 0.35;
Idq = 7.6*10^(-3);
Rd = 1.8*10^(3);
R1 = 10*10^(6);
R2 = 110*10^(6);


gmo = 2*Idss/abs(Vp);
gm = gmo*(1-(Vgsq/Vp));
rd = 1/yos;
Zi = R1*R2/(R1+R2);
Zo = rd*Rd/(Rd+rd);
Av = -gm*Rd;

disp(gmo,'gmo(S) = ');
disp(gm,'gm(S) = ');
disp(rd,'rd(ohms) = ');
disp(Zi,'Zi(ohms) = ');
disp(Zo,'Zo(ohms) = ');
disp(Av,'Av = ');
