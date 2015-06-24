//4.12
clc;
V=100;
R=0.2;
L=0.8*10^-3;
T=2.4*10^-3;
Duty_cycle=1/2.4;
E=0;
Imax=V/R*((1-exp(-Duty_cycle*T*R/L))/(1-exp(-T*R/L)))-E/R;
printf("\nImax = %.2f A", Imax)
Imin=V/R*((exp(Duty_cycle*T*R/L)-1)/(exp(T*R/L)-1))-E/R;
printf("\nImin = %.2f A", Imin)
Vavg=Duty_cycle*V;
printf("\nAverage output Voltage = %.2f V", Vavg)