//Example 12.5: SBS threshold power
clc;
clear;
close;
//given data :
gb=4*10^-11;// in m/W
A_eff=55*10^-12;// in m^2
L_eff=20;// in km
lamda_p=1.55;// micro-m
n=1.46;// constant
Va=5960;// for the silica fiber in m-s^-1
Vb=(2*n*Va)/lamda_p;
del_v=100*10^6;// in Hz
del_Vb=20*10^6;// in Hz
b1=1;
b2=2;
P_th=((21*b1*A_eff)/(gb*L_eff))*(1+(del_v/del_Vb))
P_th1=((21*b2*A_eff)/(gb*L_eff))*(1+(del_v/del_Vb))
disp(P_th,"SBS threshold power for the worst case in mW")
disp(P_th1,"SBS threshold power for the best possible case in mW")
