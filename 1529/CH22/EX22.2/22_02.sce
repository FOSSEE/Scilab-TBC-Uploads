//Chapter 22, Problem 2
clc;
E=240;                              //e.m.f
Z=50*16;                            //no of armature conductors
phi=30e-3;                          //flux
p=4/2;                              //no of pairs of poles
c=2*p;
n=(E*c)/(2*p*phi*Z);              //armature speed
printf("Speed = %d rev/s",n);
