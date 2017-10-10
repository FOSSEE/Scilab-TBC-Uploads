//Caption:Calculate Rise time,time for capacitor to charge to required amount and time required for complete charging
//Ex2.5
clc;
clear;
close;
V=5//Voltage source(in volts)
r=39//Resistor(in kilo ohm)
c=500//Capacitance of capacitor(in pf)
tr=2.2*r*c*10^(-3)
t=r*c*10^(-3)
tc=5*r*c*10^(-3)
disp(tc,t,tr,'Rise time,time for  63.2% charging and time required for complete charging(in micro sec)=')