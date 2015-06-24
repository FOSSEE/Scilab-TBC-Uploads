//Exa 10.4
clc;
clear;
close;
//Given data :
L=150;//m
wc=1;//kg
A=1.25;//cm^2
U_stress=4200;//kg/cm^2
Pw=100;//kg/m^2(Wind pressure)
SF=4;//factor of safety
W_stress=U_stress/SF;//kg/cm^2
T=W_stress*A;//kg
d=sqrt(A/(%pi/4));//cm
w_w=Pw*d*10^-2;//kg
wr=sqrt(wc^2+w_w^2);//kg
S=wr*L^2/8/T;//m
disp(S,"Maximum sag(m)");
