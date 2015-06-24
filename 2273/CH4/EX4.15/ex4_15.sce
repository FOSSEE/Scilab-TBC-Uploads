//Find the capacitance of 3 phase line
clear;
clc;
//soltion
//given
r=1;//cm//radius of the conductor
d=250;//cm//spacing
L=100000;//m//length of the line
Eo=8.854*10^-12//permitivity of the air
C=2*%pi*Eo*L/(log(d/r));
C_=C*10^6;
printf("Capacitance of 100km line= %.4fµF",C_);
