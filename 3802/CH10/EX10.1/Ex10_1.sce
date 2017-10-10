//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex10_1.sce

clc;
clear;
f=50;
p=4;

printf("\n   (a)")
Ns=(120*f)/p;
printf("\n  Synchronous speed=%d r.p.m \n",Ns)

printf("\n   (b)")
s=0.04;
N=Ns-(s*Ns);
printf("\n  The rotor speed=%d r.p.m \n",N)

printf("\n   (c)")
N=600;
s=(Ns-N)/Ns;
fs=s*f;
printf("\n  The rotor frequency=%d Hz",fs)
