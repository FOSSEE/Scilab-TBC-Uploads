//Resistance R, Current I
close();
clear;
clc;
R1 = 15;//ohm
R2 = 25;//ohm
I = 5;//A
I1 = R2/(R1+R2)*I;
I2 = R1/(R1+R2)*I;
P1 = I1^2*R1;
P2 = I2^2*R2;
mprintf('Power consumed by Resistance R1, P1 = %0.1f W \nPower consumed by Resistance R2, P2 = %0.1f W',P1,P2);