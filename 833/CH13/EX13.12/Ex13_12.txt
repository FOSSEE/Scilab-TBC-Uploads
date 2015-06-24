//Caption:Calculate synchronous reactance and synchronous impedance per phase
//Exa:13.12
clc;
clear;
close;
V=3300//Voltage of alternator(in volts)
f=50//Frequency(in hertz)
r=0.4//Effective resistance per phase(in ohm)
I_f=20//Field current(in ohms)
I_fl=300//Full load current(in A)
e=1905//Voltage induced on open circuit(in volts)
Zs=e/I_fl
Xs=sqrt((Zs^2)-(r^2))
disp(Zs,Xs,'Synchronous reactance and impedance(in ohms)=')