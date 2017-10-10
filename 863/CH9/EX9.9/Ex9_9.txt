//Caption:Calculate drain current
//Ex9.9
clc;
clear;
close;
V=5//Output peak voltage(in volts)
p=1//Pulse width(in ms)
s=50//Space width(in micro sec)
C=0.03//Capacitance(in micro farad)
Vp=6//Gate source voltage(in volts)
I1=C*V*1000/p
Vi=Vp+1
R1=Vi/I1
Id=I1*p/s
disp(Id,'Drain current(in mA)=')