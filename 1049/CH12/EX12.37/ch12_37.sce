clear;
clc;
K_m=1;
N=2100;
w_m=2*%pi*N/60;
E_a=K_m*w_m;
//after calculations V_t, calculated
V_t=227.66;
r_a=4;
I_a=(V_t-E_a)/r_a;
T_e=K_m*I_a;    printf("motor torque=%.4f Nm",T_e);
