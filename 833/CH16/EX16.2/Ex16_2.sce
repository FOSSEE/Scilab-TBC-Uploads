//Caption:Find equivalent circuit resistance
//Exa:16.2
clc;
clear;
close;
Wc=60//Core loss(in watts)
a=90//Voltage across first rotor is 90% of applied voltage(in %)
V=230//Voltage applied to motor(in volts)
v=V*(a/100)
Ic=Wc/v
rc=v/Ic
disp(rc,'Equivalent circuit resistance(in ohms)=')