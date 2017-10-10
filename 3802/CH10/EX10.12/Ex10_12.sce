//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex10_12.sce

clc;
clear;
p=4;
f=50;
R2=0.25;
N1=1425;
N2=1275;

Ns=(120*f)/p;
s1=(Ns-N1)/Ns;
s2=(Ns-N2)/Ns;
R=(R2*(s2/s1))-R2;
printf("\n External resistance per phase=%1.1f ohm per phase",R)
