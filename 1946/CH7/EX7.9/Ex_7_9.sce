// Example 7.9;//overall power 
clc;
clear;
close;
Pdc=300*10^-6;//d.c. power in watt
f=20*10^6;//frequency in hertz
Ti=5*10^-9;//recombination life time in nano second
Pe=(Pdc*sqrt(1+(2*%pi*f*Ti)^2))*10^6;
disp(Pe,"overall power in micro watt")
