//Chapter 19, Problem 10
clc;
R=200e3;                        //resistance
Vi=-0.75;                       //input voltage
C=2.5e-6;                       //capacitance
Vo = (-1/(C*R))*integrate('-0.75', 't', 0, 0.1)        //output voltage
printf("\n Output voltage is %.2f V",Vo)
