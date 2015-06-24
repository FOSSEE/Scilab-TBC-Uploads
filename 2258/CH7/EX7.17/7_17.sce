clc();
clear;
// To calculate the Hall voltage
RH=3.66*10^-4;     //hall coefficient in m^3/coulomb
I=10^-2;    //current in amp
B=0.5;    //magnetic field in wb/m^2
t=1;    //thickness in mm
t=t*10^-3;    //thickness in m
VH=(RH*I*B)/t;
VH=VH*10^3;    //converting from Volts to mV
printf("Hall voltage is %f mV",VH);
