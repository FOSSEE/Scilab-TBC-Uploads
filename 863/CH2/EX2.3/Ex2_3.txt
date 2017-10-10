//Caption:Calculate voltage after 8ms
//Ex:2.3
clc;
clear;
close;
c=1//Capacitance of capacitor(in micro farad)
vs=6//Source voltage(in volts)
r=10//Resistor(in kilo ohm)
vi=-3//Initial voltage(in volts)
t=8//Time (in milli sec)
e=vs-((vs-vi)*2.718^(-t/(r*c)))
disp(e,'Voltage after 8ms(in volts)=')