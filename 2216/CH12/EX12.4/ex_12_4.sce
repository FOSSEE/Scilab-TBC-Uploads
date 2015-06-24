//Example 12.4: Total power
clc;
clear;
close;
//given data :
L_eff=20;// in km
del_lamdaC=125;// in nm
gR=6*10^-14;// m/W
A_eff=55*10^-12;// in m^2;
del_lamdaS=0.8;// in nm
N=32;// number of channels
F=0.1;//  constant
P_tot=(4*F*del_lamdaC*A_eff)/(gR*del_lamdaS*L_eff*(N-1));
disp(P_tot,"Total power,P_tot(mW) = ")
