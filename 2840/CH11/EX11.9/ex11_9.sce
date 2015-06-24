clc;
clear all;
B=0.5;//given flux density
d=3*1e-3;//given thickness
J=500;//given current density
n=1e21;//given donor density
e=1.6*1e-19;//charge of electron
Vh=(B*J*d/(n*e));//hall voltage
disp('V',Vh,'hall voltage is=');
