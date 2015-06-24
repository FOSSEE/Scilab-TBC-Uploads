//4.11
clc;
V=100;
R=0.5;
L=1*10^-3;
T=3*10^-3;
Duty_cycle=0.3333;
E=0;
Imax=V/R*((1-exp(-Duty_cycle*T*R/L))/(1-exp(-T*R/L)))-E/R;
printf("\nImax = %.2f A", Imax)
Imin=V/R*((exp(Duty_cycle*T*R/L)-1)/(exp(T*R/L)-1))-E/R;
printf("\nImin = %.1f A", Imin)
IL_avg=(Imax+Imin)/2;
printf("\nAverage Load current = %.1f A", IL_avg)
Vavg=Duty_cycle*V;
printf("\nAverage Load Voltage = %.2f V", Vavg)