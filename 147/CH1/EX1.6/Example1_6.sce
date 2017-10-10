//Rating of electric heating pad Vr,Pr
//Rating of bulbs Vbr,Pr
close();
clear;
clc;
Vr = 110;//V
Pr = 55;//W
V = 220;
Vbr = 110;
Pr1 = 25;
Pr2 = 60;
Pr3 = 75;
Pr4 = 100;
//Resistance of heating pad 'Rp'
Rp = Vr^2/Pr;
R1 = Vbr^2/Pr1;
R2 = Vbr^2/Pr2;
R3 = Vbr^2/Pr3;
R4 = Vbr^2/Pr4;
Rb = R4 + 1/2*R2;
Ip = V/(Rp+Rb);
H = Ip^2*Rp;
mprintf('The possible combination is 100W bulb in series with parallel combination of two 60 W bulbs \nRate of heat produced by pad, H = %0.2f W',H);