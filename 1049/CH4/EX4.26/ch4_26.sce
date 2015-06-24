clear;
clc;
V_p=18;
n=.72;
V_BB=V_p/n;
I_p=.6*10^-3;
I_v=2.5*10^-3;
V_v=1;
R_max=V_BB*(1-n)/I_p;    printf("R_max=%.2f kilo-ohm",R_max/1000);
R_min=(V_BB-V_v)/I_v;    printf("\nR_min=%.2f kilo-ohm",R_min/1000);

C=.04*10^-6;
f_min=1/(R_max*C*log(1/(1-n)));    printf("\nf_min=%.3f kHz",f_min/1000);
f_max=1/(R_min*C*log(1/(1-n)));    printf("\nf_max=%.2f kHz",f_max/1000);

