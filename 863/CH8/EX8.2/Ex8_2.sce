//Caption:Design a 555 astable multivibrator
//Ex8.2
clc;
clear;
close;
p=2//Pulse repetition frequency(in Khz)
d=0.66//Duty cycle
Ic=1//Minimum collector voltage selected(in mA)
Vcc=18//Supply voltage(in volts)
t=1000/p
t1=d*t
t2=t-t1
R=Vcc/(3*Ic)
C=t1*0.001/(0.693*R)
Rb=t2*0.001/(0.693*C)
Ra=R-Rb
disp(C,Rb,Ra,'Components required to design the circuit are resistors Ra,Rb(in kilo ohm) and Capacitance(in micro farad)=')