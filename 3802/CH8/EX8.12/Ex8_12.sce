//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex8_12.sce.

clc;
clear;
V=480;
Ia=110;
Ra=0.2;
Z=864;
phi=0.05;
a=6;
p=3;

printf("\n (a)")
E=V-(Ia*Ra);
n=(E*a)/(2*Z*p*phi);
N=(n*60);
printf("\n  Speed=%d r.p.m \n",N)

printf("\n (b)")
Pm=E*Ia;
T=Pm/(2*%pi*n);
printf("\n  Gross torque developed in the armature=%d Nm \n",T)
