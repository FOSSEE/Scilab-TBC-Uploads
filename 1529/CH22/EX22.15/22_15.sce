//Chapter 22, Problem 15
clc;
p=8/2;                      //pairs of poles
c=2;
phi=25e-3;                  //flux
Ia=30;                      //armature current
Z=900;
T=(p*phi*Z*Ia)/(%pi*c);         //torque 
printf("Torque = %.1f Nm",T);
