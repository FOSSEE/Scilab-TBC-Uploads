//Caption:Determine required current
//Ex14.6
clc;
clear;
close;
c=1280//Input wave clock cycles
f=200//Output frequency(in khz)
p=1000//Pulses during t2
V=1//Input voltage(in volts)
R=10//Resistance(in kilo ohm)
C=0.1//Capacitance(in micro farad)
I=V*1000/R
T=1000/f
t1=T*c
vo=(I*t1)/(C*1000)
t2=T*p
Ir=C*vo*1000/t2
disp(Ir,'Required current(in micro ampere)=')