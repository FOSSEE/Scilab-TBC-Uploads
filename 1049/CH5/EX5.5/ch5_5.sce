clear;
clc;
C_j=25*10^-12;
I_c=5*10^-3;    //charging current
V_s=200;
R=50;
C=(C_j*V_s)/(I_c*R);    printf("Value of C=%.2f uF",C*10^6);
