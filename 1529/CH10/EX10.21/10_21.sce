//Chapter 10, Problem 20, figure 10.35
clc;
fr=400e3;               //resonant frequency
Qf=100;                 //Q factor
C=400e-12;              //capacitance
L=((2*%pi*fr)^2*C)^-1;      //calculating inductance 
R=2*%pi*fr*L/Qf;            //calculating resistance
printf("(a) Inductance = %f mH\n\n\n",L*1000);
printf("(b) Resistance of inductor = %f ohm",R);
