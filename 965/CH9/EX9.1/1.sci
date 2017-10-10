clc;
clear all;
disp("The heat flux")
d=1.2/1000;//m diameter of wire
L=0.2;//m length of wire
p=7;// bar
I=135;// Amp
V=2.18;//V
ts=200;// degree C
A=%pi*d*L;//m^2
tsat=164.97;// degree C corresponding to 7 bar
Q=V*I;//W
flux=Q/A;// W/m^2 heat flux
disp("W/m^2",flux,"the heat flux =")
h=flux/(ts-tsat);
disp("W/m^2.C",h,"boiling heat transfer coefficient =")
