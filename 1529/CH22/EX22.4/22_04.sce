//Chapter 22, Problem 4
clc;
p=8/2;                              //no of pairs of poles
c=2;
phi=0.03;                           //flux
n=500/60;                           //armature speed
Z=1200;                             //no of armature conductors
E=(2*p*phi*n*Z)/c;                  //e.m.f
printf("emf = %f V",E);
