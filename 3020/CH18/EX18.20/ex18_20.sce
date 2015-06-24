clc;
clear all;
I=200;//current in Amp
H=1.5;//applied megnetic field in Wb/m^2
n=8.4e28;//no of electrons per unit volume in electron/m^3
d=1e-3;//thickness of the strip in m
e=1.6e-19;//charge of electron
Vy=I*H/(n*e*d);//hall potential 
disp('Volt',Vy,'hall potential is:')
