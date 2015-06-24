clear; clc; close;

yos = 20*10^(-6);
Idss = 10*10^(-3);
Idq = 2.8*10^(-3);
Vp = -4;
Vgsq = -1.9;
Vi = 20*10^(-3);
Rd = 2.4*10^(3);
Rg = 3.3*10^(6);
Rl = 10*10^(3);

gmo = 2*Idss/abs(Vp);
gm = gmo*(1-(Vgsq/Vp));
Av2 = -gm*Rd;
Av1 = -gm*(Rd*Rg/(Rd+Rg));
Av = Av1*Av2;
Vo = Av*Vi;
Zi = Rg;
Zo = Rd;
Vl = (Rl/(Zo+Rl))*Vo;


disp(gm,'gm(S) = ');
disp(Av2,'voltage gain = ');
disp(Vo,'output voltage(Volts) = ');
disp(Zi,'input impedance(ohms) = ');
disp(Zo,'output impedance(ohms) = ');
disp(Vl,'output voltage across the load(Volts) = ');
