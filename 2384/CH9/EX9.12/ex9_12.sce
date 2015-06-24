// Exa 9.12
clc;
clear;
close;
format('v',6)
// Given data
Rating = 30*10^3;// in VA
V1 = 2000;// in V
V2 = 200;// in V
f = 50;// in Hz
R1 = 3.5;// in ohm
X1 = 4.5;// in ohm
R2 = 0.015;// in  ohm
X2 = 0.02;// in ohm
K = V2/V1;
R1e = R1 + (R2/(K^2));// in ohm
disp(R1e,"The equivalent resistance to primary side in ohm is");
X1e = X1 + (X2/(K^2));// in ohm
disp(X1e,"The equivalent reactance to primary side in ohm is");
Z1e = sqrt( (R1e^2) + (X1e^2) );// in ohm
disp(Z1e,"The equivalent impedance to primary side in ohm is");
I1 = Rating/V1;// in A
// Total copper loss in transformer
Pcu_total = (I1^2)*R1e;// in W
disp(Pcu_total,"Total copper loss in W is");
