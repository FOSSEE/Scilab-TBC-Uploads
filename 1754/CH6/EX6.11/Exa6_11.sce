//Exa 6.11
clc;
clear;
close;
//given data
L=1.25;//in um
mu_n=0.065;//in m^2/V-s
Cox=6.9*10^-4;//in F/m^2
VT=0.65//in Volt
ID_sat=4;//in mA
VGS=5;//in Volt
//Formula : ID_sat=W*mu_n*Cox*(VGS-VT)^2/(2*L)
W=ID_sat*10^-3*2*L*10^-6/(mu_n*Cox*(VGS-VT)^2);//in meter
disp(W*10^6,"Channel Width in micro meter :");