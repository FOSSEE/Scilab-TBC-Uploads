//Chapter 22, Problem 25
clc;
V=250;                  //supply voltage
I=40;                   //current   
Ra=0.15;                //armature resistance
Rf=0.05;                //field resistance
n=(((V*I)-(2*I^2*(Ra+Rf)))/(V*I))*100;      //overall efficiency
printf("Efficiency = %.1f percent",n);
