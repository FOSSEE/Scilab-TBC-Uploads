clear; clc; close;

yos = 20*10^(-6);
Vgs_on = 8;
Vgs_th = 3;
Vgsq = 6.4;
Idq = 2.75*10^(-3);
Id_on = 6*10^(-3);
k = 0.24*10^(-3);
Rf = 10*10^(6);
Rd = 2*10^(3);

gm = 2*k*(Vgsq-Vgs_th);
rd = 1/yos;
Zi = (Rf+(rd*Rd/(rd+Rd)))/(1+gm*(rd*Rd/(rd+Rd)));
Zi2 = Rf/(1+gm*Rd);
Zo = Rf*Rd*rd/(Rf*rd+rd*Rd+Rd*Rf);
Zo2 = Rd;
Av = -gm*Rf*Rd*rd/(Rf*rd+rd*Rd+Rd*Rf);
Av2 = -gm*Rd;

disp(gm,'gm(S) = ');
disp(rd,'rd(ohms) = ');
disp(Zi,'Zi(ohms) = ');
disp(Zi2,'Zi without rd(ohms) = ');
disp(Zo,'Zo(ohms) = ');
disp(Zo2,'Zo without rd(ohms) = ')
disp(Av,'Voltage gain Av = ');
disp(Av2,'Volatge gain Av(ignoring rd) = ');
