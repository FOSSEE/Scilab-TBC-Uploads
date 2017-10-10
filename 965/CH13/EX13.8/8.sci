clc;
clear all;
disp("time required for evaporation")
L=15/1000;// m
T=40+273;// K
D=0.25*10^(-4);// m^2/s
pw1=0.07384;// bar
pw2=0;
Mw=18;
A=1;
G=8314;
p=1.0132;// N/m^2

mw=(D*A*Mw*p*10^5/(G*T*L))*log((p-pw2)/(p-pw1));//kg/(m^2*s)
disp("kg/(m^2*s)",mw,"mw = ")
M=0.015*1*1000;//kg/m^2
t=M/(mw*3600); //h
disp("h",t,"time required t = ")
