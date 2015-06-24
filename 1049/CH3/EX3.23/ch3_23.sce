clear;
clc;
R=50;
L_L=10*10^-3;
f=50;
w=2*%pi*f;
C=10/(2*w*sqrt(R^2+(2*w*L_L)^2));    printf("C=%.2f uF",C*10^6);
VRF=0.1;
L=(1/(4*w^2*C))*((sqrt(2)/(3*VRF))+1);    printf("\nL=%.3f mH",L*10^3);