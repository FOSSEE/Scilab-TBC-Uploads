clear;
clc;
V_i=220;
V_o=660;
a=1-V_i/V_o;
T_on=100;    //microsecond
T=T_on/a;
T_off=T-T_on;    printf("pulse width of o/p voltage=%.0f us",T_off);

T_off=T_off/2;
T_on=T-T_off;
a=T_on/T;
V_o=V_i/(1-a);    printf("\nnew o/p voltage=%.0f V",V_o);

