//8.22
clc;
R2=5.6*10^3;
R1=10*10^3;
Avf=1+R2/R1;
printf("Mid band Gain=%.2f", Avf)
Vin=1.1;
Vo=Avf*Vin;
printf("\nOutput voltage=%.3f mV", Vo)
R=10000;
C=0.001*10^-6;
fc=1/(2*%pi*R*C);
printf("\nCutt off frequency=%.2f Hz", fc)
Vo=0.707*Avf;
printf("\nOutput voltage=%.3f mV", Vo)
