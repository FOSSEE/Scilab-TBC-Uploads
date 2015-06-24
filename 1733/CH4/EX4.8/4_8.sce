//4.8
clc;
V=200;
E=100;
R=0.5;
t=2*10^-3;
L=16*10^-3;
Imin=10;
i=(V-E)/R*(1-exp(-R*t/L))+Imin*exp(-R*t/L);
printf("Current at the instant of turn off thyristor = %.2f A", i)
t=5*10^-3;
i_5=i*exp(-R*t/L);
printf("\nCurrent after 5ms of turn off thyristor = %.2f A", i_5)