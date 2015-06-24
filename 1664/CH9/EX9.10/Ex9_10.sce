
//Example No.9.10.
//Page No 272.
clc;clear;
d = 10^(-6);//Electrical conductivity -[ohm^-1 m^-1].
e = 1.6*10^(-19);//Electron charge.
ue = 0.85;//Electron mobility -[m^2 V^-1 s^-1].
uh = 0.04;//hole mobility -[m^2 V^-1 s^-1].
Ni = (d/(e*(ue+uh)));//intrinsic carrier concentration
printf("\nThe intrinsic carrier concentration of GaAs is %3.3e m^-3",Ni);
