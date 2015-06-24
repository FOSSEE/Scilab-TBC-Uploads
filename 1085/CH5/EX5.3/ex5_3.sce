//Exam:5.3
clc;
clear;
close;
T=300;//Temperature(in Kelevin)
t=2*10^-14;//time(in sec)
V_c=8.9;//volume of 63.54gm of copper(in cc)
Aw_c=63.54;//Atomic weight of copper(in a.m.u)
e=1.6*10^(-19);
m=9.1*10^-31;
N_a=6.023*10^23;//avogadro's number
n=(N_a/(Aw_c/V_c))*10^6;//Number of electrons per m^3
conductivity=(e^2)*n*t/m;//conductivity of copper at 300K(in mho/m)
disp(conductivity,'conductivity of copper at 300K(in mho/m)=');