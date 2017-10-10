//Caption:Calculate voltage at 14 ms 
//Ex2.8
clc;
clear;
close;
Eo=0//Voltage at t=0sec(in volt)
E=20//Peak voltage(in volts)
r=3.3//Resistance(in kilo ohm)
c=1//Capacitance(in micro farad)
t1=4//Time(in ms)
t2=2//Time(in ms)
e1=E-((E-Eo)*(2.718)^(-t1/(r*c)))
e2=Eo-((Eo-e1)*(2.718)^(-t1/(r*c)))
e3=E-((E-e2)*(2.718)^(-t1/(r*c)))
e3=Eo-((Eo-e3)*(2.718)^(-t2/(r*c)))
disp(e3,'Voltage at 14ms(in volts)=')