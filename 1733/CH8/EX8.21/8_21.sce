//8.21
clc;
R2=5.6*10^3;
R1=1*10^3;
Avf=1+R2/R1;
printf("Mid band Gain=%.2f", Avf)
Vin=1.6;
Vo=Avf*Vin;
printf("\nOutput voltage=%.3f mV", Vo)
R=1000;
C=0.001*10^-6;
fc=1/(2*%pi*R*C);
printf("\nCutt off frequency=%.2f Hz", fc)
Gain=0.707*Avf;
printf("\nGain=%.3f", Gain)
