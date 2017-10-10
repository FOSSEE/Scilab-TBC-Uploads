//Caption:Determine max and min voltage at which capacitor voltage will settle
//Ex2.9
clc;
clear;
close;
E=20//Peak voltage(in volts)
t=4//Time interval(in ms)
r=3.3//Resistance(in kilo ohms)
c=1//Capacitance(in micro farad)
Emax=E/(1+(2.718^(-t/(r*c))))
Emin=E-Emax
disp(Emin,Emax,'Maximum and minimum voltage(in volts)=')