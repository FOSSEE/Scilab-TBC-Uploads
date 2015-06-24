//Exam:5.2
clc;
clear;
close;
n=10^19;//electrons per m^3
V=0.017;//applied voltage 
d=0.27*10^-2;//distance with material
e=1.602*10^-19;//in coulomb
m=9.1*10^-31;//mass of an electron(in kg)
conductivity=0.01;//in mho.m^-1)
E=V/d;//Electric field(in V/m)
v=(conductivity*E/(n*e))*10^2;//drift velocity of carriers(in meter/sec)
disp(v,'drift velocity of carriers(in meter/sec)=');