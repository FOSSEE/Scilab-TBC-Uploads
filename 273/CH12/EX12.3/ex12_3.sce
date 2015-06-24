clc;clear;
//Example 12.3
//calculation of depth and wavelength

//given values

f=.07*10^6;//frequency in Hz
t=.65;//time taken for pulse to return
v=1700;//velocity of sound in sea water in m/s

//calculation
d=v*t/2;//
disp(d,'the depth of sea(in m) is');
l=v/f;//wavelenght of pulse in m
disp(l*10^2,'wavelength of pulse (in cm)is');