//Ex:4.10
clc;
clear;
close;
L=1*10^-3;
f1=100;
f2=10000;
X_L1=(2*%pi*f1*L);
X_L2=(2*%pi*f2*L);
printf("Reactance at 100Hz = %f ohm",X_L1);
printf("\nReactance at 10kHz = %f ohm",X_L2);