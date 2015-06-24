//Find the capacitance of 3 phase 3 wire line
clear;
clc;
//soltion
//given
r=0.01;//m//radius of the conductor
d1=3.5;//m//spacing
d2=5;//m//spacing
d3=8;//m//spacing
L=1000;//m//length of the line
Eo=8.854*10^-12//permitivity of the air
de=(d1*d2*d3)^(1/3)
C=2*%pi*Eo*L/(log(de/r));
C_=C*10^6;
printf("Capacitance of line= %.4f µF",C_);
