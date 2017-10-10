//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex8_11.sce.

clc;
clear;
V1=440;
V2=220;
Ia=50;
Ra=0.3;
a=2;
p=2;
Z=850;
phi_1=0.025;
phi_2=0.02;

E=V1-(Ia*Ra);
n1=(E*a)/(2*Z*p*phi_1);
N1=n1*60;
n1_by_n2=(V1*phi_2)/(V2*phi_1);
n2=n1/(n1_by_n2);
N2=n2*60;
printf("\n   Motor Speed: \t N1=%d r.p.m \t N2=%d r.p.m \n",N1,N2)
