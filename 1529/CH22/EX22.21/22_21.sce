//Chapter 22, Problem 21
clc;
V=200;                          //supply voltage
Ra=0.4;                         //armature resistance
Ia=30;                          //armature current
n1=1350/60;                     //rotating speed 
Ia2=45;                         //armature current 2
E1=V-(Ia*Ra);                   //e.m.f 1
E2=V-(Ia2*Ra);                  //e.m.f 2
n2=(n1*E2)/E1;                  //speed of the motor due to armature current 2
printf("Speed of the motor = %.3f rev/min",n2*60);
