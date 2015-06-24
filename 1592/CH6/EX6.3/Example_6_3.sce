//Scilab Code for Example 6.3 of Signals and systems by
//P.Ramakrishna Rao
//Minimum no. of samples required
clc;
clear;
syms t;
x=10*cos(6*%pi*t)+4*sin(8*%pi*t);
disp(x,'x(t)');
disp('Maximum Frequency component present: 4 Hz');
fs=2*4;
disp(fs,'Minimum Sampling Frequency to avoid distortion is:');
