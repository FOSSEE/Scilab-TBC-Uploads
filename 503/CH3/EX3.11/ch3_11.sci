// To calculate efficiency of transformer

clc;

V_2=200;
I_2=100;
pf=.8;
P_o=V_2*I_2*pf;            //power output

P_i=120;
P_c=300;
k=1;
P_L=P_i+k^2*P_c;            //total losses

n=1-(P_L/(P_o+P_L));       disp(n*100,'n(%)');

K=sqrt(P_i/P_c);            //max efficiency

n_max=1-(2*P_i/(P_o*K+2*P_i));        //pf=.8
disp(n_max*100,'n_max(%)');