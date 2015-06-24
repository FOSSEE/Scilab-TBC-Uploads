clear; clc; close;

yos = 20*10^(-6);
Idss = 10*10^(-3);
Idq = 10*10^(-3);
Vp = -4;
Vdsq = Vp/4;
Rg = 10*10^(6);
Av = -8;
Vdd = 20;


Vgsq = Vp/4;
Id = Idss*(1-(Vgsq/Vp))^2;
gmo = 2*Idss/abs(Vp);
gm = gmo*(1-(Vgsq/Vp));
//let Rd||rd = x
x = abs(Av)/gm;
rd = 1/yos;
Rd =  106.5*10^(3)/47.87;
Rs = -Vgsq/Id;

disp(Rd,'Rd(ohms) = ');
disp(Rs,'Rs(ohms) = ');

