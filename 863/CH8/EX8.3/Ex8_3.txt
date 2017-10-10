//Caption:Determine actual PRF and duty cycle
//Ex8.3
clc; 
clear;
close;
C=0.082//Capacitance(in micro farad)
Ra=3.3//Resistance(in kilo ohm)
Rb=2.7//Resistance(in kilo ohm)
t1=0.693*C*(Ra+Rb)*1000
t2=0.693*C*Rb*1000
T=t1+t2
P=1000/T
d=t1*100/T
disp(P,d,'Duty cycle(in %) and PRF(in Khz)=')