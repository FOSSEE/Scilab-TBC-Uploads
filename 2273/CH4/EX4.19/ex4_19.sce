//Calculate the capacitance per phase
clear;
clc;
//soltion
//given
Eo=8.85*10^-12//permitivity of the air
Vph=132*1000/sqrt(3);//phase voltage
d1=8;//m//distances
d2=6;//m
r=3*2.5*10^-3;//m//radius of conductor in m
C=4*%pi*Eo/log((2^(1/3))*(d1/r)*((d2^2+d1^2)/(4*d1^2+d2^2))^(1/3));
C_=C*100*1000;
printf("Capacitance of 100 km line= %.3fμf",C_*10^6);
