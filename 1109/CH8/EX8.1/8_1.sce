clear;
clc;
K=0.5*exp(%i*(30)/(180/%pi));
Zo=100;
Zl=Zo*(1+K)/(1-K);
A=real(Zl);
B=imag(Zl);
printf("Load impedance = %f /_ %f ohms",fix(abs(Zl)),round(atan(B,A)*180/%pi));
