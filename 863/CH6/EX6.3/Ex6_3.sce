//Caption:Determine Largest speed up capacitance
//Ex6.3
clc;
clear;
close;
f=1//Frequency(in Mhz)
R1=22//Resistance(in kilo ohm)
R2=22//Resistance(in kilo ohm)
Rc1=4.7//Resistance(in kilo ohm)
R=R1*(Rc1+R2)/(R1+Rc1+R2)
t=1/f
C=t*1000/(2.3*R)
disp(C,'Required Capacitance(in pF)=')