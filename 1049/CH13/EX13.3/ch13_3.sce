clear;
clc;
I_c=10;
f=50;
V_s=230;
C=I_c/(2*%pi*f*V_s);    printf("value of capacitance=%.3f uF",C*10^6);
I_l=10;
L=V_s/(2*%pi*f*I_l);    printf("\nvalue of inductor=%.3f mH",L*1000);
