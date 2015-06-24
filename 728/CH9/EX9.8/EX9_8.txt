//Caption:Calculate the rational frequency & critical velocity of diode.
//Exa:9.8
clc;
clear;
close;
v_d=2*10^7;//in cm/s
L=20*10^-4;//in cm
f=v_d/L;
disp(f*10^-9,'Natural frequency (in GHz) =');
critical_field=3.3*10^3;
V=L*critical_field;
disp(V,'Critical voltage (in volts) =');