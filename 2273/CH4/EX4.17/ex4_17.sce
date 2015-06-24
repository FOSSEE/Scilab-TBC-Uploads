//Find the capacitance and charging current
clear;
clc;
//soltion
//given
f=50;//frequency
Vph=220*1000/sqrt(3);//phase voltage
r=0.01;//m//radius of the conductor
d1=3;//m//spacing
d2=3;//m//spacing
d3=6;//m//spacing
L=1000;//m//length of the line
Eo=8.854*10^-12//permitivity of the air
de=(d1*d2*d3)^(1/3)
C=2*%pi*Eo*L/(log(de/r));
C_=C*10^9;
printf("Capacitance of line= %.4f*10^-12F\n",C_);
Ic=2*%pi*f*C*Vph;
printf("Charging current per phase is= %.3fmA",Ic);
