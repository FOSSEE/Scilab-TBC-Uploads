clc();
clear;
// To calculate the magnitude of Hall voltage
I=50;    //current in amp
B=1.5;   //magnetic field in T
n=8.4*10^28;     //free electron concentration in electron/m^3
t=0.5;    //thickness in cm
e=1.6*10^-19;
t=t*10^-2;    //thickness in m
VH=(I*B)/(n*e*t);
VH=VH*10^6;   //converting VH from V to micro V
printf("magnitude of Hall voltage is %f microVolt",VH);
