clc;
// page no 24
// prob no 1.8
// Given: N=0.2W; S+N=5W; :. S=4.8W
N=0.2; S=4.8;
p=(S+N)/N;
pdB=10*log10(p);
disp('dB',pdB,'The power ratio in dB');