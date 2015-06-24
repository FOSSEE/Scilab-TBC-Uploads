// Exa 8.13
clc;
clear;
close;
format('v',9)
// Given data
a = 12;// in cm^2
a = a * 10^-4;// in m^2
l_i = 50;// in cm
l_i = l_i * 10^-2;// in m
l_g = 0.4;// in cm
l_g = l_g * 10^-2;// in m
N = 2*400;
I = 1;// in A
miu_r = 1300;
miu_o = 4*%pi*10^-7;
Si = l_i/(miu_o*miu_r*a);// in AT/Wb
disp(Si,"The reluctance of magnetic circuit in AT/Wb is");
miu_r = 1;
Sg = l_g/(miu_o*miu_r*a);// in AT/Wb
disp(Sg,"The reluctance of air gap in AT/Wb is");
S_T = Si+Sg;// in AT/Wb
disp(S_T,"Total reluctance in AT/Wb is");
format('v',7)
mmf = N*I;// in AT
phi_T = mmf/S_T;// in Wb
phi_T= phi_T*10^3;// in mWb
disp(phi_T,"The total flux in mWb is");
phi_T= phi_T*10^-3;// in Wb
//phi_T =B*a;
B = (phi_T)/a;// in Wb/m^2
disp(B,"The flux density of air gap in Wb/m^2 is");
