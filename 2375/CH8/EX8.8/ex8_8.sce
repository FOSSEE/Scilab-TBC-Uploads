// Exa 8.8
clc;
clear;
close;
format('v',6)
// Given data
gm= 6000*10^-6;// in S
R1 = 2;// in M ohm
R1 = R1 * 10^6;// in ohm
R2 = 500;// in k ohm
R2 = R2 * 10^3;// in ohm
R_S= 4*10^3;// in ohm
R_L= 33*10^3;// in ohm
r_d= 50*10^3;// in ohm
Zi = (R1*R2)/(R1+R2);// in ohm
Zi= Zi*10^-3;// in k ohm
disp(Zi,"The input impedance in k ohm is");
Zo = (1/gm*R_S)/(1/gm+R_S);// in ohm
disp(Zo,"The output impedance in ohm is");
// Let Req= r_d || R_S || R_L;// in ohm
Req= r_d*R_S*R_L/(r_d*R_S+R_S*R_L+R_L*r_d);// in ohm
Av=gm*(r_d*R_S*R_L/(r_d*R_S+R_S*R_L+r_d*R_L))/(1+gm*(r_d*R_S*R_L/(r_d*R_S+R_S*R_L+r_d*R_L)))
disp(Av,"The voltage gain is : ")

