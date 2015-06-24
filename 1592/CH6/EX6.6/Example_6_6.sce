//Scilab Code for Example 6.6 of Signals and systems by
//P.Ramakrishna Rao
//Sampling Frequency / Nyquist Rate
clc;
clear;
syms t;
x=12*cos(800*%pi*t)*cos((1800*%pi*t))^2;
disp(x,'x(t)');
disp('Maximum Frequency component present: 2200 Hz');
fs=2*2200;
disp(fs,'Minimum Sampling Frequency to avoid distortion is(Hz):');
