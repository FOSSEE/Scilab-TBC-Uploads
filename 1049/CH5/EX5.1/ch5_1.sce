clear;
clc;
L=5*10^-3;
C=20*10^-6;
V_s=200;
w_o=sqrt(1/(L*C));
t_o=%pi/w_o;    printf("conduction time of thyristor=%.5f ms",t_o*1000);
printf("\nvoltage across thyristor=%.0f V",-V_s);