//Resistance R, Inductance L
close();
clear;
clc;
R = 5;//ohm
L = 0.01;//H
//For maximum current
t = 2*L/R;
mprintf('Time at which current reaches its maximum value, t = %0.0f ms',t*1000);