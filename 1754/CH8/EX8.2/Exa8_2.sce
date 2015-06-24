//Exa 8.2
clc;
clear;
close;
//Given data
format('v',5);
L=100;//in uH
L=L*10^-6;//in H
f1=500;//in kHz
f1=f1*10^3;//in Hz
f2=1500;//in kHz
f2=f2*10^3;//in Hz
//Formula : f=1/(2*%pi*sqrt(L*C))
C1=1/(4*%pi^2*f1^2*L);//in F
C2=1/(4*%pi^2*f2^2*L);//in F
disp("Range of capacitor : "+string(C2*10^12)+" pF to "+string(C1*10^12)+" pF");