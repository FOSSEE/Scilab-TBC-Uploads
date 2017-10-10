//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex8_6.sce.

clc;
clear;
N=360;
phi=45e-3;
s=120;
E=260;
p=4;
n=N/60;
a=8;
Z=(E*a)/(2*phi*p*n);
coductors_per_slot=Z/s;
total_no_of_conductors=coductors_per_slot*s;
printf("\n Number of conductors per slot=%d \n",coductors_per_slot)

phi=(E*a)/(2*960*n*p)
printf("\n Flux=%1.5f Wb/pole",phi)
