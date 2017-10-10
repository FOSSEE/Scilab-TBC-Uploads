clc;
clear all;
disp("heat lost by man")
d=0.35;// m 
h=1.65;//m
ts=28;// degree C
ta=12;// degree C
U=30*1000/3600;// m/s
tf=(ts+ta)/2; // film temperature
k=2.59*10^(-2);// W/m.C
v=15*10^(-6);// m^2/s
Pr=0.707;
Re=U*d/v;
disp("Nu=C*Re^n*Pr^(1/3)")
C=0.027;
n=0.805;
Nu=C*Re^n*Pr^(1/3);
hs=Nu*k/d
Q=hs*%pi*d*h*(ts-ta);
disp("w",Q,"heat lost by man =")
