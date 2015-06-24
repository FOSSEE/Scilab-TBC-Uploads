//1.28
clc;
C=6*10^-6;
R=4;
V=300;
L=6*10^-6;
b_max=V/L*10^-6; // b=di/dt
printf("The maximum permissible value of di/dt = %.0f MA/s",b_max)
Isc=V/R;
//a=dv/dt
a=((R*b_max*10^6)+(Isc/C))*10^-6;
printf("\nThe maximum permissible value of dv/dt = %.1f MV/s",a)