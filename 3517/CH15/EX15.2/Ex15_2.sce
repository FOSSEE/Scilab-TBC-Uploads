//Caption:Determine capacitance and minimum acquisition time
//Ex15.2
clc;
clear;
close;
Vs=1//Supply voltage(in volts)
a=0.25//Accuracy(in %)
t=500//Holding time(in micro sec)
Ib=500//Maximum base current(in nA)
Rd=30//Drain Resistance(in ohm)
v=Vs*0.1/100
C=Ib*t*10^(-9)/v
T=7*C*Rd
disp(T,C,'Required capacitance(in micro farad) and acquisition time(in micro sec)=')