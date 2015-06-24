clear;
clc;
Umax=2;
Uavg=(1/(4*%pi))*2*integrate('(sin (P))^2','P',0,%pi)*integrate('(sin (Q))^3','Q',0,%pi);
D=Umax/Uavg;
disp(D,'Directivity of antenna');