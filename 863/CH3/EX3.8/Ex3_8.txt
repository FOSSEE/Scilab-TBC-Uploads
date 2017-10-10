//Caption:Find Capacitance and Resistance required to design the circuit
//Ex3.8
clc;
clear;
close;
E=20//Input waveform amplitude(in volts)
f=2//Frequency(in Khz)
t=0.02//Tilt
R=600//Resistance(in ohm)
T=1/f
pw=T*1000/2
C=pw/R
R=pw/(t*C)
disp(R,C,'Capacitance(in micro farad) and Resistance(in ohm)=')