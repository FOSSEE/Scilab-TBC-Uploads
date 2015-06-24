
//Example No.9.7.
//Page No.270.
//To find mobility of the electron.
clc;clear;
d = 112;//Conductivity -[ohm^-1 m^-1].
Nd = 2*10^(22);//Concentration of electrons -[m^-3].
e = 1.6*10^(-19);//Electron charge.
u = (d/(Nd*e));//Mobility of electrons.
printf("\nMobility of the electron is %.3f m^2 V^-1 s^-1",u);
