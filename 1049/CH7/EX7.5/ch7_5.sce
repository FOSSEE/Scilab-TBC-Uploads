clear;
clc;
V_o=660;
V_s=220;
a=(V_o/V_s)/(1+(V_o/V_s));
T_on=120;
T=T_on/a;
T_off=T-T_on;    printf("pulse width o/p voltage=%.0f us",T_off);

T_off=3*T_off;
T_on=T-T_off;
a=T_on/(T_on+T_off);
V_o=V_s*(a/(1-a));    printf("\nnew o/p voltage=%.2f V",V_o);