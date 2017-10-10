close();
clear;
clc;
//armature resistance 'Ra', synchronous reactance 'Xs', rated power 'P', load 'Pl', power factor 'pf'
Ra = 1; //ohm
Xs = 20; //ohm
P = 11*1000; //V
Pl = 1500*1000; //W
pf = 0.8;
//terminal voltage per phase 'Vt'
Vt = P/sqrt(3); //V
Ia = Pl/(Vt*3); //A
Vo = sqrt((Vt*pf + Ia*Ra)^2 + (Vt*sqrt(1-pf^2) - Ia*Xs)^2); //V
//percent voltage regulation 'reg'
reg = (Vo-Vt)/Vt;
mprintf("Voltage regulation = %0.2f %%",reg*100);