//Caption:Determine maximum value of capacitor
//Ex4.6
clc;
clear;
close;
f=45//Frequency(in khz)
Rb=150//Base Resistor(in ohms)
t=1000/(2*f)
C=t*1000/(2.3*Rb)
disp(C,'Maxixmumvalue of capacitor(in pF)=')