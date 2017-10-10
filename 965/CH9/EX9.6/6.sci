clc;
clear all;
disp("power dissipation/length")
d=0.01;//m
e=0.92;
ts=260;// degree C
rhol=958.4;// kg/m^3
hfg=2257*10^3;//J/kg
rhov=4.807;// k/m^3
cpv=2.56*10^3;// J/kg.K
k=0.0331;// W/m.K
muv=14.85*10^(-6);// Ns/m^2
mug=muv;;
g=9.81;//m/s
ta=100;// degree C
te=ts-ta;// excess temperature
hconv=0.65*(k^3*rhov*(rhol-rhov)*g*(hfg+0.4*cpv*te)/(muv*d*te))^0.25;
hrad=5.67*10^(-8)*e*(ts^4-ta^4)/(ts-ta);
h=hconv+3*hrad/4;
Q=h*%pi*d*(ts-ta);// 
disp("W",Q,"power dissipation per unit length for the heater =")
