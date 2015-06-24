clc;
clear;
S=4;//number of stages
SNR_input=55;//input Signal to Noise ratio in dB

SNR_output=SNR_input-10*log10(S);

disp("Output SNR( in dB) is");
disp(SNR_output);
