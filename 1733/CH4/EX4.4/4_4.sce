//4.4
clc;
Duty_cycle=0.4;
Vs=200;
Vd=2;
Vav=Duty_cycle*(Vs-Vd);
printf("Average output voltage = %.1f V", Vav)
VL=Duty_cycle^0.5*(Vs-Vd);
printf("\nRMS output voltage = %.3f V", VL)
R=8;
Po=VL^2/R;
Pi=Duty_cycle*Vs*(Vs-Vd)/R;
Chopper_efficiency=Po/Pi*100;
printf("\nChopper efficiency = %.0f percent", Chopper_efficiency)
Rin=R/Duty_cycle;
printf("\nInput resistance = %.0f Ohm", Rin)
V1=126.05/2^0.5;
printf("\nRMS value of fundamental component = %.3f V", V1)