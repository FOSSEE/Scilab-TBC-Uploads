//Example 2.7 page 31
//Given a DSP system with a sampling rate of 8,000 Hz and a hold circuit used
//after DAC,
//a. Determine the percentage of distortion at the frequency of 3,400 Hz.
//b. Determine the percentage of distortion at the frequency of 1,000 Hz.
clc,clear,close;
fs = 8000;
T = 1/fs;
//part a
fa = 3400;
x = fa*T;
distortion = (1 - sin(x*%pi)/(x*%pi)) * 100;
disp("(a) distortion % = " + string(distortion) + "%");

//part b
fb = 1000;
x = fb*T;
distortion = (1 - sin(x*%pi)/(x*%pi)) * 100;
disp("(b) distortion % = " + string(distortion) + "%");