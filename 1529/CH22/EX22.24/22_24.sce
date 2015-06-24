//Chapter 22, Problem 24
clc;
Ra=0.2                  //armature resistance
V=320;                  //supply voltage
Rf=40;                  //field resistance
I=80;                   //current
If=V/Rf;                //field current
Ia=I-If;                //armature current
C=1500;
n=(((V*I)-(Ia^2*Ra)-(If*V)-C)/(V*I))*100;           //overall efficiency
printf("Efficiency = %.3f percent",n);
