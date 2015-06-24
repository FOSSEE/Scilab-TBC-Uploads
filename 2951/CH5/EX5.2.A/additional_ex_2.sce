clc;
clear;
F_audio=5; //Audio input Frequency in kHz

F_sampling=2*F_audio;

disp(F_sampling,"The Minimum Sampling Frequency (in kHz)");

disp("When the audio Frequency of 6 Khz enters the Sample and Hold circuit");
disp("it will overlap the audio spectrum, and the alaising frequency is 4 kHz");
