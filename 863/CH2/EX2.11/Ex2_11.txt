//Caption:Calculate output voltage for (a)10V and (b)20V
//Ex2.11
clc;
clear;
close;
E1=10//Input voltage(in volts)
E2=20//Input voltage(in volts)
c=1//Capacitance(in micro farad)
r=1//Resistance(in kilo ohm)
t=100//Pulse width(in ms)
i1=(c*E1*10^(-6))/(t*10^(-3))
eo1=i1*r*1000
disp(eo1,'Output voltage for (a)(in volts)=')
i2=(c*E2*10^(-6)/(t*10^(-3)))
eo2=i2*r*1000
disp(eo2,'Output voltage for (b)(in volts)=')