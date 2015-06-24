clear;
clc;
f=50;    //Hz
V=230;
V_m=sqrt(2)*V;
R=400;
RF=0.05;
C=(1/(4*f*R))*(1+(1/(sqrt(2)*RF)));    printf("capacitor value=%.1f uF",C/10^-6);
V_o=V_m*(1-1/(4*f*R*C));    printf("\no/p voltage with filter=%.3f V",V_o);
V_o=2*V_m/%pi;    printf("\no/p voltage without filter=%.2f V",V_o);