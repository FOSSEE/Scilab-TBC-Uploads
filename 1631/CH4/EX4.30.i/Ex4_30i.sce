//Caption: step size
//Example 4.30i
//page no 202
//Find  step size
clear;
clc;
fs=64000; //  samples/sec
Amax=1;
fm=3500;
//A=del/(2*%pi*fm*Ts)
del=(2*%pi*fm*Amax)/fs;
disp("mV",del*1000,"Step Size ");
