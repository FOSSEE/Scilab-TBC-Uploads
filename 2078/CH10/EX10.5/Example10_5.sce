//Exa 10.5
clc;
clear;
close;
//Given data :
L=160;//m
d=0.95;//cm
wc=0.65;//kg/m
U_stress=4250;//kg/cm^2
Pw=40;//kg/m^2(Wind pressure)
SF=5;//factor of safety
W_stress=U_stress/SF;//kg/cm^2
T=W_stress*%pi/4*d^2;//kg
w_w=Pw*d*10^-2;//kg
wr=sqrt(wc^2+w_w^2);//kg
S=wr*L^2/8/T;//m
disp(round(S),"Sag(meter)");
