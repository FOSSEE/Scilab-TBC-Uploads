//Caption:Design a square wave generator using 7555 CMOS
//Ex8.4
clc;
clear;
close;
V=5//Supply voltage(in volts)
f1=1//Frequency(in khz)
f2=3//Frequency(in khz)
C=0.01//Capacitance(in micro farad)
Ra=47//Choosed resistor(in kilo ohm)
t1=1/(2*f1)
t2=1/(2*f2)
R=t1/(0.693*C)
Rb=R-Ra
disp(C,Rb,Ra,'Components required to design the circuit are Ra,Rb(in kilo ohm) and Capacitance(in micro farad)=')