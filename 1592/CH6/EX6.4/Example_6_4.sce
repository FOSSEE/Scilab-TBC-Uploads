//Scilab Code for Example 6.4 of Signals and systems by
//P.Ramakrishna Rao
//Sampling Frequency
clc;
clear;
//x(t)=100*(sinc(100*t))^2;
fo=100;
fs=2*fo;
disp(fs,'Minimum Sampling Frequency to avoid distortion is:');
