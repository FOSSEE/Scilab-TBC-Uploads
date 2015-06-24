clear;
clc;
R=1;
L=20*10^-6;
C=40*10^-6;
w_r=sqrt((1/(L*C))-(R/(2*L))^2);
t_1=%pi/w_r;    printf("conduction time of thyristor=%.3f us",t_1*10^6);
