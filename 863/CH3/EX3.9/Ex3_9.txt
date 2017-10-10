//Caption:Calculate Capacitance,Resistance and Zener Voltage
//Ex3.9
clc;
clear;
close;
E=15//Amplitude of input waveform(in volts)
Rs=1//Source Resistance(in Kilo ohm)
V=9//Output Voltage(in volts)
Vf=0.7//Diode forward voltage(in volts)
f=500//Frequency(in hertz)
t=0.01//Tilt
T=1000/f
pw=T/2
C=pw/Rs
R=pw/(t*C)
Vz=V-Vf
disp(Vz,R,C,'Capacitance(in micro farad),Resistance(in Kilo ohm) and Zener Voltage(in volts)=')