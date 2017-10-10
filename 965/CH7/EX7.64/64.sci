clc;
clear all;
disp("heat transfer rate")
ta=24;//degree C
ts=130;// degree C
U=0.4;// m/s
Ql=100;// W
d=0.065;//m 
tb=(ta+ts)/2;
k=0.03;// W/m.C
v=2.08*10^(-5);// m^2/s
Pr=0.697;
Re=U*d/v;
Nu=0.37*Re^0.6;
h=Nu*k/d;
Q=h*%pi*d^2*(ts-ta);
disp("W",Q,"Heat transfer rate =")
e=Q/Ql;
disp("%",e*100,"the percentage of power lost due to convetion =")
