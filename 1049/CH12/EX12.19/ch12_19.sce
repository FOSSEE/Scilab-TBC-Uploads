clear;
clc;
clear
T_e=30;
K_m=1.5;
I_a=T_e/K_m;
N=1000;
w_m=2*%pi*N/60;
E_a=K_m*w_m;
r_a=0;
V_t=E_a+I_a*r_a;
V_s=220;
a=V_t/V_s;
f=400;
T=1/f;
T_on=a*T;
T_off=T-T_on;
L=0.02;
di=(V_s-E_a)/L;    //di=di_a/dt, during on period
dii=(-E_a)/L;    //di=di_a/dt, during off period
//I_mx=I_mn+di*T_on;
//I_a=(I_mx+I_mn)/2;
//after solving
I_mx=22.808;    printf("maximum armature current=%.3f A",I_mx);
I_mn=2*I_a-I_mx;    printf("\nminimum armature current=%.3f A",I_mn);
printf("\narmature current extrusion=%.3f A",I_mx-I_mn);
t=poly(0,'t');
i_a=addf('I_mn',mulf('t','di'));
printf("\narmature current expression during turn-on");
disp(eval(i_a));
i_a=addf('I_mx',mulf('t','dii'));
printf("\narmature current expression during turn-off");
disp(eval(i_a));
