clear;
clc;
w_m=0;    printf("lower limit of speed control=%.0f rpm",w_m);
I_a=25;
r_a=.2;
V_s=220;
K_m=0.08;
a=(K_m*w_m+I_a*r_a)/V_s;    printf("\nlower limit of duty cycle=%.3f",a);

a=1;    printf("\nupper limit of duty cycle=%.0f",a);
w_m=(a*V_s-I_a*r_a)/K_m;    printf("\nupper limit of speed control=%.1f rpm",w_m);
