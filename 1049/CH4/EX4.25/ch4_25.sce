clear;
clc;
f=2000;    //Hz
C=0.04*10^-6;
n=.72;
R=1/(f*C*log(1/(1-n)));    printf("R=%.2f kilo-ohm",R/1000);
V_p=18;
V_BB=V_p/n;
R2=10^4/(n*V_BB);    printf("\nR2=%.2f ohm",R2);
I=4.2*10^-3;    //leakage current
R_BB=5000;
R1=(V_BB/I)-R2-R_BB;    printf("\nR1=%.0f ohm",R1);