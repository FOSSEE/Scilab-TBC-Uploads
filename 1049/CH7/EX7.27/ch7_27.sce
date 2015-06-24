clear;
clc;
I_a=30;
r_a=.5;
V_s=220;
a=I_a*r_a/V_s;    printf("min value of duty cycle=%.3f",a);
printf("\nmin Value of speed control=%.0f rpm",0);
a=1;
printf("\nmax value of duty cycle=%.0f",a);
k=.1;//V/rpm
N=(a*V_s-I_a*r_a)/k;    printf("\nmax value of speed control=%.0f rpm",N);