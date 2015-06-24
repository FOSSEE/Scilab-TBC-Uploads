//Caption:Determine the capacitance for flip flop design and triggering frequency 
//Ex13.4
clc;
clear;
close;
R1=15//Resistor(in kilo ohm)
R2=27//Resistor(in kilo ohm)
t=250//time(in ns)
R=R1*R2/(R1+R2)
C=t/(0.1*R)
f=10^6/(2.3*C*R)
disp(f,C,'Capacitance(in pF) and Frequency(in Khz)=')