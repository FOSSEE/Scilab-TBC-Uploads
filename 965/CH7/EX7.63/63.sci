clc;
clear all;
disp("heat transfer coefficient")
d=0.025;//m
ta=30;// degree C
U=2.5;// m/s
ts=85;// degree C
rhoc=0.0175*10^(-6);// ohm.m^3/m
k=0.02673;// W/m.C
v=16*10^(-6);// m^2/s
Re=U*d/v;
Nu=0.22*Re^0.6;
h=Nu*k/d;
disp("W/m^2.C",h,"The heat transfer coefficient from the surface to the air =")
Q=h*%pi*d*1*(ts-ta);
R=rhoc*1/(%pi*d^2/4);
I=(Q/R)^0.5;
disp("amps",I,"permissible current intensity for the bus bar, I =")
