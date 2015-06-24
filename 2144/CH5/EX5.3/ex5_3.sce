// Exa 5.3
clc;
clear;
close;
// Given data
P1 = 0.93;// in bar
T1 = 93;// in degree C
T1 = T1 + 273;// in K
V2 = 1;// assumed
V1 = 8.5*V2;
r = V1/V2;
Gamma = 1.4;
P2 = P1 * ((V1/V2)^(Gamma));// in bar
disp(P2,"Pressure at the beginning of compression stroke in bar is");
T2 = (P2*V2*T1)/(P1*V1);// in K
disp(T2-273,"Temperature at the beginning of compression stroke in °C")
P3 = 38;// in bar
T3 = T2 * (P3/P2);// in K
disp(P3,"Pressure at the beginning of expansion stroke in bar is : ")
disp(T3-273,"Temperature at the beginning of expansion stroke in °C is :")
V3 = V2;
V4 = V1;
P4 = P3 * ((V3/V4)^(Gamma));// in bar
T4 = T1 * (P4/P1);// in K
disp(P4,"Pressure at the end of expansion stroke in bar is :")
disp(T4-273,"Temperature at the end of expansion stroke in °C is :")
Eta = 1 - (1/((r)^(Gamma-1)));
Eta = Eta * 100;// in %
disp(Eta,"Standard air efficiency in % is");
