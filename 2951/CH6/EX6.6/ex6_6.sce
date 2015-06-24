clc;
clear;
N_figure=8 ;//Noise figure in dB
SNR_in=45; //Signal to  Noise ratio in dB

SNR_out=SNR_in-N_figure //output Signal to Noise ratio

disp("the Output SNR(in dB) is ");
disp(SNR_out);
