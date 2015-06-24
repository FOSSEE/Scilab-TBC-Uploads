//Exa 1.10
clc;
clear;
close;
//Given data
VDmin=1.5;//in Volt
VDmax=2.3;//in Volt
VS=5;//in Volt
RS=270;//in Ohm
Imin=(VS-VDmax)/RS;//in Ampere
disp(Imin*1000,"Minimum value of LED current in mA : ");
Imax=(VS-VDmin)/RS;//in Ampere
disp(round(Imax*1000),"Maximum value of LED current in mA : ");