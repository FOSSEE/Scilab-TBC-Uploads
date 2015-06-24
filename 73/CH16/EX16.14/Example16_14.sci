//Chapter 16_Bipolar and MOS Digital Gate Circuits
//Caption : AC Power
//Example16.14: Calculate the ac power dissipated by a CMOS inverter which drives a 20pF load.Given f=1MHz and Vdd=10V.
//Solution:
clear;
clc;
Ct=20*10^-12;// load capacitor in Farad
Vdd=10;//drain voltage supply in Volt
f=1*10^6;//frequency at which output voltage changes
//since P=Ct*Vdd^2*f
P=20*10^-12*(10)^2*10^6;
disp('W',P,'ac power dissipated  by a CMOS inverter is:')