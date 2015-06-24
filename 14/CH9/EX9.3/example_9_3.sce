//Chapter 9
//Page 236
//Example 9.3
//losscoeff
clear;clc;
I1 = 1;I2 = 0.8;
V3 = 1;pf1 =1;pf2 = pf1;pf3 = pf1;
Za = 0.04 + %i * 0.16;Ra = real(Za);
Zb = 0.03 + %i * 0.12;Rb = real(Zb);
Zc = 0.02 + %i * 0.08;Rc = real(Zc);
V1 = V3 + I1 * Za;disp(V1,'Voltage at bus 1,V1 in per unit')
V2 = V3 + I2 * Zb;disp(V2,'Voltage at bus 2,V2 in per unit')
disp('Transmission Loss Co-efficients')
B11 = (Ra + Rc) / (abs(V1) * pf1)^2;disp(B11,'B11 in per unit')
B12 = Rc / (abs(V1) * abs(V2) * pf1 * pf2);disp(B12,'B12 in per unit')
B22 = (Rb + Rc) / (abs(V2) * pf2)^2;disp(B22,'B22 in per unit')
