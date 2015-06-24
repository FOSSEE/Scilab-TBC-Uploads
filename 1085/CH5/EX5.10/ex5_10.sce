//Exam:5.10
clc;
clear;
close;
N_a=6.023*10^23;
V_c=8.9;//volume of 63.54gm of copper(in cc)
Aw_c=63.54;//Atomic weight of copper(in a.m.u)
n=(N_a/(Aw_c/V_c))*10^6;//Number of electrons per m^3
e=1.6*10^-19;
m=9.1*10^-31;
t=2*10^-14;//collision time
conductivity=n*(e^2)*t/m;//conductivity of copper
disp(conductivity,'conductivity of copper(in ohm^-1/m)=');