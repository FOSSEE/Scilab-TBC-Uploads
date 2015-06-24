clear;
clc;
a=.6;
V_s=400;
V_t=(1-a)*V_s;
I_a=300;
P=V_t*I_a;    printf("power returned=%.0f kW",P/1000);

r_a=.2;
K_m=1.2;
R_eq=(1-a)*V_s/I_a+r_a;    printf("\nequivalent load resistance=%.4f ohm",R_eq);

w_mn=I_a*r_a/K_m;
N=w_mn*60/(2*%pi);    printf("\nmin braking speed=%.2f rpm",N);
w_mx=(V_s+I_a*r_a)/K_m;
N=w_mx*60/(2*%pi);    printf("\nmax braking speed=%.1f rpm",N);

w_m=(V_t+I_a*r_a)/K_m;
N=w_m*60/(2*%pi);    printf("\nmax braking speed=%.1f rpm",N);
