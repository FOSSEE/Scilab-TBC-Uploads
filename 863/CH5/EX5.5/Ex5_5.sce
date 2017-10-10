//Caption:Calculate lowest operating frequency for circuit
//Ex5.5
clc;
clear;
close;
V=4//Peak to peak amplitude of output waveform(in volts)
Vi=10//Input voltage(in volts)
Vs=15//Supply voltage(in volts)
Ib=500//Maximum Base current(in nA)
f=250//Frequency of input waveform(in hz)
I=1//Circuit current(in mA)
R1=Vi/I
R3=20*R1
R2=(R3*R1)/(R1+R3)
t=1000/(2*f)
C=(I*t)/V
F=20*1000/(2*%pi*C*R3)
disp(F,'Required frequency(in hz)=')