clear;
clc;

I_CEO=2*10^-3;//A
V_CC=220;//V
P_dt=I_CEO*V_CC;//instant. power loss during delay time

t_d=.4*10^-6;//s
f=5000;
P_d=f*I_CEO*V_CC*t_d;//avg power loss during delay time

V_CES=2;//V
t_r=1*10^-6;//s
I_CS=80;//A
P_r=f*I_CS*t_r*(V_CC/2-(V_CC-V_CES)/3);//avg power loss during rise time

t_m=V_CC*t_r/(2*(V_CC-V_CES));
P_rm=I_CS*V_CC^2/(4*(V_CC-V_CES));//instant. power loss during rise time

P_on=P_d+P_r;   printf("avg power loss during turn on=%.4f W",P_on);
P_nt=I_CS*V_CES;    printf("\ninstantaneous power loss during turn on=%.0f W",P_nt);
t_n=50*10^-6;
P_n=f*I_CS*V_CES*t_n;    printf("\navg power loss during conduction period=%.0f W",P_n);
