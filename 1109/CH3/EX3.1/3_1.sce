clear;
clc;
l=10;a=0.03;b=0.03;Vr=4;f=1000;
P=a+(%i*b);
Vs=Vr*(exp(P*l));
C=real(Vs);
D=imag(Vs);
printf("Sending end voltage is Vs = %f /_ %f volts",fix(abs(Vs)*100)/100,round(atan(D,C)*180/%pi));
