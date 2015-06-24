//Ex:4.7
clc;
clear;
close;
c=1*10^-6;
f1=100;
f2=10000;
X_c1=1/(2*%pi*f1*c);
X_c2=1/(2*%pi*f2*c);
printf("Reactance at 100Hz = %f mA",X_c1);
printf("\n Reactance at 10kHz = %f mA",X_c2);