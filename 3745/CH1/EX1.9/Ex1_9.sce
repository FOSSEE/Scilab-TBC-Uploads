// Ex 9 Page 349

clc;clear;close;
// Given

omega_o=600;//rad/s
omega=400;//rad/s
R=3;//ohm
IBYIo=1/2;//ratio


fo=omega_o/2/%pi;//Hz
f=omega/2/%pi;//Hz
//I/Io=1/(sqrt(1+Q**2*(f/fo-fo/f)**2))
Q=sqrt(1/IBYIo**2-1)/(fo/f-f/fo)
//Q=1/omega_0/R/C
C=1/omega_o/R/Q*10**6;//uF
//Q=omega_0*L/R
L=Q*R/omega_o*1000;//mH
printf("L = %.1f mH\n C=%.f uF",L,C)
