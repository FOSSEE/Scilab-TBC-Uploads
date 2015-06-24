clear;
clc;
T_on=800*10^-6;
V_s=220;
I_o=80;
C=50*10^-6;
T=T_on+2*V_s*C/I_o;    printf("effective on period=%.0f us",T*10^6);

L=20*10^-6;
C=50*10^-6;
i_T1=I_o+V_s*sqrt(C/L);    printf("\npeak current through main thyristor=%.2f A",i_T1);
i_TA=I_o;    printf("\npeak current through auxillery thyristor=%.0f A",i_TA);

t_c=C*V_s/I_o;    printf("\nturn off time for main thyristor=%.1f us",t_c*10^6);
t_c1=(%pi/2)*sqrt(L*C);    printf("\nturn off time for auxillery thyristor=%.3f us",t_c1*10^6);

printf("\ntotal commutation interval=%.0f us",2*t_c*10^6);

t=150*10^-6;
v_c=I_o*t/C-V_s;    printf("\ncapacitor voltage=%.0f V",v_c);

printf("\ntime nedded to recharge the capacitor=%.0f us",2*V_s*C/I_o*10^6);