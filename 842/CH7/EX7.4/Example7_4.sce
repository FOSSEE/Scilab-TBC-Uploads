//clear//
//Example7.4:Finding the period of the sampled signal
//and Sampling frequency
clear;
close;
clc;
Wm = 2*%pi/9;
N = floor(2*%pi/(2*Wm))
disp(N,'Period of the discrete signal')
Ws = 2*%pi/N;
disp(Ws,'The Sampling frequency corresponding to the period N')
