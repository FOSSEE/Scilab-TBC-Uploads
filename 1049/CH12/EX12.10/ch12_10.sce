clear;
clc;
V_s=400;
V_m=sqrt(2)*V_s;
a=30;
V_t=3*V_m*cosd(a)/%pi;
I_a=21;
r_a=.1;
V_d=2;
K_m=1.6;
w_m=(V_t-I_a*r_a-V_d)/K_m;
N=w_m*60/(2*%pi);    printf("speed of motor=%.1f rpm",N);

N=2000;
w_m=2*%pi*N/60;
I_a=210;
V_t=K_m*w_m+I_a*r_a+V_d;
a=acosd(V_t*%pi/(3*V_m));    printf("\nfiring angle=%.2f deg",a);
I_sr=I_a*sqrt(2/3);
pf=V_t*I_a/(sqrt(3)*V_s*I_sr);    printf("\nsupply power factor=%.3f",pf);

I_a=21;
w_m=(V_t-I_a*r_a-V_d)/K_m;
n=w_m*60/(2*%pi);
reg=(n-N)/N*100;    printf("\nspeed regulation(percent)=%.2f",reg);