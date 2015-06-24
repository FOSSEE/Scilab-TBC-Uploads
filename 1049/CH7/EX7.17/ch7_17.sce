clear;
clc;
L=0.0016;
C=4*10^-6;
w=1/sqrt(L*C);
t=%pi/w;    printf("time for which current flows=%.2f us",t*10^6);