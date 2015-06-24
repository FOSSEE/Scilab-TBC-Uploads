clc();
clear;
// To calculate the Hall voltage and charge carrier concentration
I=3;    //current in mA
I=I*10^-3;    //current in amp
e=1.6*10^-19;
RH=3.66*10^-4;    //hall coefficient in m^3/C
B=1;    //flux density in w/m^2
d=2;   //dimension along Y in cm
d=d*10^-2;   //dimension along Y in m
z=1;   //dimension along z in mm
z=z*10^-3;    //dimension along z in m
A=d*z;   //area in m^2
EH=RH*I*B/A;
VH=EH*d;
VH=VH*10^3;    //converting from V to mV
n=1/(RH*e);
printf("Hall voltage is %f mV",VH);
printf("charge carrier concentration in m^3 is");
disp(n);
