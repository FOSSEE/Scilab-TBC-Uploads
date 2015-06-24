//4.5
clc;
Duty_cycle=0.25;
V=400;
Vav=Duty_cycle*V;
Vn=V-Vav;
L=0.05;
di=10;
Ton=L*di/Vn;
T=Ton/Duty_cycle;
f=1/T;
printf("\nChopper frequency = %.0f Hz", f)
