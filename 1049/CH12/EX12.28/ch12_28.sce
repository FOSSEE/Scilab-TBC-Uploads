clear;
clc;
V=400;
V_ph=V/sqrt(3);
N_s=1000;
N=800;
a=.7;
I_d=110;
R=2;
k=1-((1-N/N_s)*(2.339*a*V_ph)/(I_d*R));    printf("value of duty cycle=%.3f",k);
P=I_d^2*R*(1-k);
I1=a*I_d*sqrt(2/3);
r1=.1;
r2=.08;
Pr=3*I1^2*(r1+r2);
P_o=20000;
P_i=P_o+Pr+P;
eff=P_o/P_i*100;    printf("\nefficiency=%.2f",eff);

I11=sqrt(6)/%pi*a*I_d
th=43;
P_ip=sqrt(3)*V*I11*cosd(th);
pf=P_ip/(sqrt(3)*V*I11);    printf("\ninput power factor=%.4f",pf);
