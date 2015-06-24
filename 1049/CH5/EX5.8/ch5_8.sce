clear;
clc;
dv=400*10^-6;    //dv=dv_T/dt(V/s)
V_s=200;
R=20;
C=V_s/(R*dv);
C_j=.025*10^-12;
C_s=C-C_j;    printf("C_s=%.3f uF",C_s/10^6);

I_T=40;
R_s=1/((I_T/V_s)-(1/R));    printf("\nR_s=%.3f ohm",R_s);
//value of R_s in book is wrongly calculated