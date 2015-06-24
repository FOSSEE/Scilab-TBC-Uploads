//Chapter 9
//Page 237
//Example 9.4
//loss
clear;clc;
I1 = 1;I2 = 0.8;
V3 = 1;pf1 =1;pf2 = pf1;pf3 = pf1;
Za = 0.04 + %i * 0.16;Ra = real(Za);
Zb = 0.03 + %i * 0.12;Rb = real(Zb);
Zc = 0.02 + %i * 0.08;Rc = real(Zc);
V1 = V3 + I1 * Za;
V2 = V3 + I2 * Zb;
B11 = (Ra + Rc) / (abs(V1) * pf1)^2;
B12 = Rc / (abs(V1) * abs(V2) * pf1 * pf2);
B22 = (Rb + Rc) / (abs(V2) * pf2)^2;
P1 = real(I1 * V1);disp(P1,'P1 in per unit')
P2 = real(I2 * V2);disp(P2,'P2 in per unit')
PL = (P1)^2 * B11 + 2 * P1 * P2 * B12 + (P2)^2 * B22;disp(PL,'Loss calculated using loss coefficients in per unit is')
PL_I2R = I1^2 * Ra + (I1+I2)^2 * Rc + I2^2 * Rb;disp(PL_I2R,'Loss calculated using current and resistance in per unit is')
