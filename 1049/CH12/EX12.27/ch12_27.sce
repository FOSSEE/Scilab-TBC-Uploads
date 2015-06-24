clear;
clc;
V=420;
V1=V/sqrt(3);
T_e=450;
N=1440;
n=1000;
T_L=T_e*(n/N)^2;
n1=1500;
w_s=2*%pi*n1/60;
w_m=2*%pi*n/60;
a=.8;
I_d=T_L*w_s/(2.339*a*V1);
k=0;
R=(1-w_m/w_s)*(2.339*a*V1)/(I_d*(1-k));    printf("value of chopper resistance=%.4f ohm",R);

n=1320;
T_L=T_e*(n/N)^2;
I_d=T_L*w_s/(2.339*a*V1);    printf("\ninductor current=%.3f A",I_d);

w_m=2*%pi*n/60;
k=1-((1-w_m/w_s)*(2.339*a*V1)/(I_d*R));    printf("\nvalue of duty cycle=%.4f",k);

s=(n1-n)/n1;
V_d=2.339*s*a*V1;    printf("\nrectifed o/p voltage=%.3f V",V_d);

P=V_d*I_d;
I2=sqrt(2/3)*I_d;
r2=0.02;
Pr=3*I2^2*r2;
I1=a*I2;
r1=0.015;
Ps=3*I1^2*r1;
Po=T_L*w_m;
Pi=Po+Ps+Pr+P;
eff=Po/Pi*100;    printf("\nefficiency(in percent)=%.2f",eff);
