clear;
clc;
Q=100*10^3;
V_s=11*10^3;
f=50;
L=V_s^2/(2*%pi*f*Q);    printf("effective inductance=%.4f H",L);