clear; clc; close;

yos = 30*10^(-6);
Idss = 10*10^(-3);
Idq = 10*10^(-3);
Vp = -4;
Vgsq = 0;
Rg = 10*10^(6);
Av = -15;
Vdd = 30;

gmo = 2*Idss/abs(Vp);
gm = gmo;
rd = 1/yos;

//let x = Rd||rd
x = -Av/gm;
Rd = 100*10^(3)/30.33;//found by solving for x
Vdsq = Vdd-Idq*Rd;
Zi = Rg;
Zo = Rd*rd/(Rd+rd);


disp(Rd,'Rd(ohms) = ');
disp(Zi,'Zi(ohms) = ');
disp(Zo,'Zo(ohms) = ');
