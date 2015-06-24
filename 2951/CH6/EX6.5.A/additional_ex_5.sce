clc;
clear;
F=5; //noise figure in dB
SNR_input=55;//Input Signal to noise ratio in dB
SNR_output=SNR_input-F;
disp("Output SNR (in dB) is");
disp(SNR_output);
