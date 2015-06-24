clc;
clear all;
P1 = 100; // Power injected into fiber in milliwatts
P0 = 40;// Power ejected into fiber in milliwatts
loss = 10*log10(P1/P0);
disp('dB',loss,'The loss is ')
// Slight variation in the answer as compared to book... Checked in calculator... Book's mistake
