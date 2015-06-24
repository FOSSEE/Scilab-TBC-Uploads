clear
clc;
I_CEO=2*10^-3;//A
V_CC=220;//V
t_d=.4*10^-6;//s
f=5000;
V_CES=2;//V
t_r=1*10^-6;//s
I_CS=80;//A
t_n=50*10^-6;//s
t_0=40*10^-6;//s
t_f=3*10^-6;//s
P_st=I_CS*V_CES;// instant. power loss during t_s
P_s=f*I_CS*V_CES*t_f;//avg power loss during t_s
P_f=f*t_f*(I_CS/6)*(V_CC-V_CES);//avg power loss during fall time
P_fm=(I_CS/4)*(V_CC-V_CES);//peak instant power dissipation

P_off=P_s+P_f;    printf("total avg power loss during turn off=%.0f W",P_off);
P_0t=I_CEO*V_CC;    printf("\ninstantaneous power loss during t_0=%.2f W",P_0t);
P_0=f*I_CEO*V_CC*t_0;//avg power loss during t_s
P_on=14.9339;//W    from previous eg
P_n=40;//W    from previous eg
P_T=P_on+P_n+P_off+P_0;    printf("\ntotal power loss=%.3f W",P_T);