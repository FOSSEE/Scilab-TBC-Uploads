//Caption:Calculate lowest input frequency 
//Exa:1.7
clc;
clear;
close;
fl=10//Lower cutoff frequency(in hertz)
t=0.02//Tilt on output waveform
f=%pi*fl/(t*1000)
disp(f,'Lowest input frequency(in Khz)=')
