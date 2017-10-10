//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex8_5.sce.

clc;
clear;
s=50;
c=8;
N=900;
phi=25e-3;
Z=s*c;
a=2;
p=2;
n=N/60;
E=(2*Z*phi*p*n)/a;
printf("\n  Emf generated=%d volt",E)
