//Power P, Voltage V, Armature Resistance Ra,Field Resistance Rf
//Total mechanical and core losses Pc
close();
clear;
clc;
P = 100;//kW
V = 230;//V
Ra = 0.05;//ohm
Rf = 57.5;//ohm
Pc = 1.8;//kW
If = V/Rf;
Il = P*1000/V;
Ia = Il+If;
total_losses = If^2*Rf+Ia^2*Ra+Pc;
Pi = P + total_losses/1000;
n = P/Pi*100;
//Prime mover output 'pmo'
pmo = Pi*1000/746;
mprintf('Generator efficiency at full load = %0.0f %%\nPrime mover output = %0.1f hp',n,pmo);