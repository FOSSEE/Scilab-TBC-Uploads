//Caption:Design a 555 monostable circuit
//Ex8.1
clc;
clear;
close;
t=1//Pulse width(in ms)
Vcc=15//Supply voltage(in volts)
Ith=0.25//Threshold current(in micro Ampere)
Ic=100*Ith
R=Vcc*1000/(3*Ic)
C=t*10^6/(1.1*R)
disp(C,R,'Components required for designing 555 monostable circuit are R(in kilo ohm) and C(in pF)=')