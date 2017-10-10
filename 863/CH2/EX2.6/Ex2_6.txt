//Caption:Calculate minimum square wave frequency
//Ex2.6
clc;
clear;
close;
C=1//Coupling capacitor(in micro farad)
R=1//Input resistance(in Mega ohm)
t=0.01//Tilt
PW=t*R*C
f=1/(2*PW)
disp(f,'Frequency required(in hertz)=')