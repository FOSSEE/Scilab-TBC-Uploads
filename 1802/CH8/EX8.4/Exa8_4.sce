//Exa 8.4
clc;
clear;
close;
//given data
Vrms=66;//in KV
gmax=40;;//in KV/cm
V=sqrt(2)*Vrms;//in Volt
//Part (a) : 
d=2*V/gmax;//in cm
disp(d,"The most economical diameter in cm : ");
//Part (b) : 
PeakVoltage=sqrt(2)*Vrms/sqrt(3);//in Volt
V=PeakVoltage;//in Volt
d=2*V/gmax;//in cm
disp(d,"The most economical diameter for 3 phase system in cm : ");