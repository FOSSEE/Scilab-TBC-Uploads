//7.18
clc;
Vdc=2*2^0.5*230/%pi;
TL=25;
Kt=0.25;
Ia=(TL/Kt)^0.5;
w=(Vdc-1.5*Ia)/(Kt*Ia);
N=w*60/(2*%pi);
printf("Motor speed=%.2f rpm",N)