clear;
clc;
I_or=100;//A
R=1;//assumption
V_m=I_or*2*R;
I_o=V_m/(%pi*R);
q=200;//Ah
t=q/I_o;    printf("time required to deliver charge=%.04f hrs",t);