clear; clc; close;

yos = 30*10^(-6);
Idss = 16*10^(-3);
Vp = -4;
Vgsq = -2.86;
Idq = 4.56*10^(-3);
Rg = 1*10^(6);
Rs = 2.2*10^(3);


gmo = 2*Idss/abs(Vp);
gm = gmo*(1-(Vgsq/Vp));
rd = 1/yos;
Zi = Rg;
Zo = rd*Rs*gm^(-1)/((rd*Rs)+(Rs*gm^(-1))+(rd*gm^(-1)));
Zo2 = Rs*gm^(-1)/(Rs+gm^(-1));
Av = gm*(rd*Rs/(rd+Rs))/(1+(gm*(rd*Rs/(rd+Rs))));
Av2 = gm*Rs/(1+gm*Rs);

disp(gm,'gm(S) = ');
disp(rd,'rd(ohms) = ');
disp(Zi,'Zi(ohms) = ');
disp(Zo,'Zo(ohms) = ');
disp(Zo2,'Zo without rd = ')
disp(Av,'Voltage gain Av = ');
disp(Av2,'Volatge gain Av(ignoring rd) = ');

