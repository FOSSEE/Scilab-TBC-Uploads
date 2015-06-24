//3.1
clc;
R=80;
L=8*10^-3;
C=1.2*10^-6;
a=R^2;
b=4*L/C;
printf("R^2 = %.0f ", a)
printf("4*L/C = %.0f ", b)
disp('since R^2<4L/C it will work as series inverter')
fmax=(1/(L*C)-(R^2/(4*L^2)))^0.5;
printf("Maximum frequency = %.2f rad/sec", fmax)