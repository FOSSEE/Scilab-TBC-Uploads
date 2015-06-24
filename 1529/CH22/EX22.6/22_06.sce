//Chapter 22, Problem 6
clc;
E1=200;                         //generated e.m.f 1
n1=30;                          //armature speed 1
E2=250;                         //generated e.m.f 2
n2=20;                          //armature speed 2
phi1=1;                         //flux 1
phi2=(phi1*n1*E2)/(n2*E1);      //flux 2
printf("Increase in the flux per pole = %f percent",phi2*100);
