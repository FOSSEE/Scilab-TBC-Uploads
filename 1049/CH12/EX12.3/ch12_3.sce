clear;
clc;
V_s=250;
V_m=sqrt(2)*V_s;
a=30;
k=0.03;//Nm/A^2
n_m=1000;
w_m=2*%pi*n_m/60;
r=.2;//r_a+r_s
V_t=V_m/%pi*(1+cosd(a));
I_a=V_t/(k*w_m+r);    printf("motor armature current=%.2f A",I_a);
T_e=k*I_a^2;    printf("\nmotor torque=%.3f Nm",T_e);
I_sr=I_a*sqrt((180-a)/180);
pf=(V_t*I_a)/(V_s*I_sr);    printf("\ninput power factor=%.4f",pf);