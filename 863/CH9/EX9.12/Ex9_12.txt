//Caption:Design a pulse generator using 8038 IC
//Ex9.12
clc;
clear;
close;
p=200//Pulse width(in micro sec)
f=1//Pulse repetition frequency(in khz)
V=10//Output voltage(in volts)
I=1//Maximum current(in mA)
T=1000/f
t2=T-p
Ib=I*p/t2
Ra=V/(5*I)
C=0.6*p/(Ra*1000)
Rb=2*V/(5*(I+Ib))
Rl=V/I
disp(Ra,Rb,Rl,C,'Circuit components are Capacitance(in micro farad) and Resistances Rl,Rb,Ra(in kilo ohm)=')