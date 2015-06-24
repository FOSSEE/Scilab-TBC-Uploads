//Find the capacitance of 2 wire 1 phase line
clear;
clc;
//soltion
//given
r=0.25;//cm//radius of the conductor
d=150;//cm//spacing
L=50000;//m//length of the line
h=700//cm//height of conductor above earth
Eo=8.854*10^-12//permitivity of the air
C=%pi*Eo*L/(log(120/(sqrt(1+(d^2/(2*h)^2))*r)));
C_=C*10^6;
printf("Capacitance of 50km line= %.3fµF",C_);
