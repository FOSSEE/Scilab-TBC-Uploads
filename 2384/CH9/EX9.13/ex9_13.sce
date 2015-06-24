// Exa 9.13
clc;
clear;
close;
format('v',7)
// Given data
Rating = 10;// in KVA
phi= acosd(0.8)
V1 = 2000;// in V
V2 = 400;// in V
R1 = 5.5;// in ohm
X1 = 12;// in ohm
R2 = 0.2;// in ohm
X2 = 0.45;// in ohm
K = V2/V1;
//R1e = R1 + R_2 = R1 + (R2/(K^2));
R1e = R1 + (R2/(K^2));// in ohm
//X1e = X1 + X_ = X1 + (X2/(K^2));
X1e = X1 + (X2/(K^2));// in ohm
I2 = (Rating*10^3)/V2;// in A
R2e = (K^2)*R1e;// in ohm
X2e = (K^2)*X1e;// in ohm
Vdrop = I2 * ( (R2e*cosd(phi)) + (X2e*sind(phi)) );// voltage drop in V
//E2 = V2 +Vd;
E2 = V2;// in V
// The full load secondary voltage 
V2 = E2-Vdrop;// in V
disp(V2,"The full load secondary voltage in V is");
