//4.6
clc;
V=200;
R=4;
L=6*10^-3;
f=1000;
T=1/f;
Duty_cycle=0.5;
E=0;
Imax=V/R*((1-exp(-Duty_cycle*T*R/L))/(1-exp(-T*R/L)))-E/R;
printf("\nImax = %.2f A", Imax)
Imin=V/R*((exp(Duty_cycle*T*R/L)-1)/(exp(T*R/L)-1))-E/R;
printf("\nImin = %.2f A", Imin)
Maximum_ripple=V/(R*f*L);
printf("\nMaximum ripple = %.2f A", Maximum_ripple)
IL_avg=(Imax+Imin)/2;
printf("\nAverage Load current = %.0f A", IL_avg)
iL=(Imin^2+(Imax-Imin)^2/3+Imin*(Imax-Imin))^0.5;
printf("\nRMS value of Load current = %.2f A", iL)
Iavg=0.5*IL_avg;
printf("\nAverage value of input current = %.2f A", Iavg)
Irms=Duty_cycle^0.5*iL;
printf("\nRMS value of input current = %.3f A", Irms)