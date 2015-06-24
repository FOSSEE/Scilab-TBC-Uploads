//Find the capacitance of 1 phase line
clear;
clc;
//soltion
//given
r=15/2;//mm//radius of the conductor
d=1500;//mm//spacing
L=30000;//m//length of the line
Eo=8.85*10^-12//permitivity of the air
C=%pi*Eo*L/(log(d/r));
C_=C*10^6;
printf("Capacitance of 30km line= %f µF",C_);
