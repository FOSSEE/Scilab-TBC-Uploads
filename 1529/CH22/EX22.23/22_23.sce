//Chapter 22, Problem 23
clc;
n1=24;                          //rotating speed due to Ia = 15A
phi2=2;                         //flux
V=240;                          //supply voltage
Ia=15;                          //armature current 
I2=30;                          //current
Ra=0.2;                         //armature resistance
Rf=0.3;                         //field resistance
E1=V-(Ia*(Ra+Rf));              //e.m.f 1
E2=V-(I2*(Ra+Rf));              //e.m.f 2
n2=n1*E2/(E1*phi2);             //speed of motor
printf("(a) Generated e.m.f = %f V\n\n\n",E1);
printf("(b) Speed of motor n2 = %.1f rev/s",n2);
