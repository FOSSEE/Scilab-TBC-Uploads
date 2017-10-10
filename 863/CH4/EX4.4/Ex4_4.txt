//Caption:Determine (a)Capacitance that can give max turn on time (b)Max frequency
//Ex4.4
clc;
clear;
close;
Rs=600//Source resistor(in ohm)
Rb=5.6//Base resistor(in kilo ohm)
t=70//Turn on time(in ns)
C=t*1000/(0.1*Rs)
disp(C,'(a)Required capacitance(in pF)=')
tre=2.3*Rb*C*10^(-3)
f=1000/(2*tre)
disp(f,'(b)Max Frequency(in Khz)=')