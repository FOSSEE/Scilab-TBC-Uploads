// Exa 9.6
clc;
clear;
close;
format('v',7)
// Given data
V1 = 2200;// in V
V2 = 440;// in V
R1 = 0.3;// in ohm
R2 = 0.01;// in ohm
X1 = 1.1;// in ohm
X2 = 0.035;// in ohm
K = V2/V1;
Rating = 100;// in KVA
I1 = (Rating*10^3)/V1;// in A
I2 = (Rating*10^3)/V2;// in A
R1e = R1 + (R2/(K^2));// in ohm
X1e = X1+(X2/(K^2));// in ohm
Z1e = sqrt( (R1e^2) + (X1e^2) );// in ohm
disp(Z1e,"The equivalent impedance of the transformer reffered to primary in ohm is");
// Total copper loss
totalcopperloss = (I1^2)*R1e;// in W
disp(totalcopperloss,"The total copper loss in W is");
