//Chapter 22, Problem 17
clc;
V=250;                                  //supply voltage
p=6/2;                                  //pairs of poles
Z=500;                                  //conductors
Ra=1;                                   //armature resistance
phi=20*10^-3;                           //flux
Ia=40;                                  //armature current
c=2*p;
E=V-(Ia*Ra);                            //back e.m.f
n=E*c/(2*p*phi*Z);                      //rotating speed
T=(E*Ia)/(2*%pi*n);                     //torque
printf("(a) Speed = %f rev/min\n\n",n*60);
printf("(b) Torque, T = %.2f Nm",T);
