//Chapter 22, Problem 16
clc;
V=350;                          //supply voltage
Ra=0.5;                         //armature resistance
n=15;                           //motor speed in rev/sec
Ia=60;                          //armature current
E=V-Ia*Ra;                      //back e.m.f
T=(E*Ia)/(2*%pi*n);             //torque
printf("Torque,T = %.1f Nm",T);
