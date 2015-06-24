//Chapter 22, Problem 27
clc;
V=400;                              //supply voltage
I=10;                               //current
R=2;                                //total resistance
C=300;                              //iron, friction and windage losses 
n=(((V*I)-(I^2*R)-C)/(V*I))*100;            //overall efficiency
printf("Efficiency = %.1f percent",n);
