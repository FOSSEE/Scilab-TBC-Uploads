clear; clc; close;

Vi = 25*(10^(-6));
Beta = 200;
R1 = 15*(10^(3));
R2 = 4.7*(10^(3));
Rc = 2.2*(10^(3));
Zo = Rc;
Re = 1*(10^(3));

Vb = 4.7;
Ve = 4;
Vc = 11;
Vt = 26*(10^-(3));
Ie = 4*(10^(-3));

re = Vt/Ie;
Zb  = Beta*re;
Zi2 = (R1*R2*Zb)/(R1*R2 + R2*Zb + Zb*R1);
Av1 = -{(Rc*Zi2)/(Rc+Zi2)}/re;
AvNL2 = -Rc/re;
AvT_NL = Av1*AvNL2;
disp(AvT_NL,"No-load voltage gain(Avt(NL)) :");

Vo = AvT_NL*Vi;
disp(Vo,"Voltage gain(Vo) :");

Rl = 10*(10^(3));
Avt = {Rl/(Rl+Zo)}*AvT_NL;
disp(Avt,"Voltage gain(Avt) when 10kohm load applied to stage 2:");

Zi1 = Zi2;
disp(Zi1,"input impedance of first stage(Zi1) :");

Zo2 = Rc;
disp(Zo2,"Output impedance of second stage(Vo2) :");

