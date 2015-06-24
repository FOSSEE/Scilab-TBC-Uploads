//Chapter 22, Problem 13
clc;
V=240;                      //supply voltage
Ia=50;                      //armature current
Ra=0.2;                     //armature resistance
E=V-(Ia*Ra);                //back e.m.f
printf("Back emf = %d V",E);
