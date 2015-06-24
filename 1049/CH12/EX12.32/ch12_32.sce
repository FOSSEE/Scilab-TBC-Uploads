clear;
clc;
V=700;
E2=V;
N_s=1500;
N=1200;
s=(N_s-N)/N_s;
V1=415;
a_T=s*E2/V1;    printf("voltage ratio of the transformer=%.4f",a_T);