//Chapter 15, Problem 26
clc;
V=150;                      //voltage
f=50;                       //frequency
S=300;                      //apparent power
I=S/V;                      //current
Xl=V/I;                     //inductive reactance
L=(Xl/(2*%pi*f));           //inductance in henry
printf("Inductance L = %.3f H",L);
