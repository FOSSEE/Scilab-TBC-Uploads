// Exa 8.2
clc;
clear;
close;
format('v',6)
// Given data
I_DSS = 6;// in mA
I_DSS = I_DSS * 10^-3;// in A
V_P = -6;// in V
Y_DS = 40;// in µS
R_D = 3.3;// in k ohm
R_D = R_D * 10^3;// in ohm
R_S = 1.1;// in k ohm
R_S = R_S * 10^3;// in ohm
R_G = 10;// in Mohm
R_G =R_G * 10^6;// in ohm
g_mo = (2*I_DSS)/(abs(V_P));// in S
I_D= poly(0,'I_D');
V_GS = -I_D*R_S;// in V
I_D=  I_D - I_DSS*((1 - (V_GS/V_P))^2);
I_D= roots(I_D)
I_D= I_D(2);// in A
V_GSQ = -I_D*R_S;// in V
g_m = g_mo*( 1-(V_GSQ/V_P) );// in S
Zi = R_G;// in ohm
Zi= Zi*10^-6;// in M ohm
disp(Zi,"The value of Zi in M ohm is");
r_d = 40;// in k ohm assumed
r_d = r_d * 10^3;// in ohm
Zo = (r_d*R_D)/(r_d+R_D);// in ohm
Zo=R_D;// in ohm (as r_d > 10 *R_D)
Zo= Zo*10^-3;// in k ohm
disp(Zo,"The value of Zo in k ohm is");
Av = abs(-g_m*R_D);
disp(Av,"The value of Av is");
