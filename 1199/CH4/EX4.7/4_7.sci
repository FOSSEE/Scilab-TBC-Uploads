// 4.7
clc;
fc=100*10^6;
wc=2*%pi*fc;
fs=6*10^3;
ws=2*%pi*fs;
delta=60*10^3;
mf=delta/fs;
mp=mf;
disp('epm=8sin(0.6283*10^9t+10 sin 37.7*10^3t)V')
disp('for a signal voltage of 4 V')
mp=4*10/3;
disp('epm=8sin(0.6283*10^9t+13.33 sin 37.7*10^3t)V')
disp('for a fs of 8 kHz')
disp('epm=8sin(0.6283*10^9t+13.33 sin 50.27*10^3t)V')