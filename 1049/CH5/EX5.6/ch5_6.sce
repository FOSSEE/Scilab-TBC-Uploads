clear;
clc;
V_s=200;
R=5;
C=10*10^-6;
//for turn off V_s*(1-2*exp(-t/(R*C)))=0,    so after solving
t_c=R*C*log(2);    printf("circuit turn off time=%.4f us",t_c*10^6);