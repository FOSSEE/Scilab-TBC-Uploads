clc;
//page 436
//problem 8.2

//Given frequency range fc - fm = 0.995MHz to fc + fm = 1.005Mhz
//Double side message bandwidth is fM
fM= (1.005 - 0.995)*10^6 / 2;
disp('Message bandwidth is '+string(fM)+' Hz');
//The textbook contains a calculation error here.
//The calculated fM in the textbook is 500kHz instead of 5kHz,
//Following which all the solutions obtained here are erroneous.

//Given input signal strength Si= 1mW
//Let output signal strength be So
//So=Si/2
Si= 10^(-3);
So= Si/2;
disp('Signal output strength is '+string(So)+' dB');

//Given Power Spectral Density n = 10^-9 W/Hz
//Let output noise strength be No
n= 10^-9;
No= (n*fM)/2;
disp('Output Noise Strength is '+string(No)+' dB');

//Let SNR at filter output be SNR
SNR= So / No;
disp('Output SNR of the DSB-SC wave is '+string(SNR)+' dB');

//By reduction of message signal Bandwidth the Output Noise strength changes
//Let the new output noise strength, bandwidth and SNR be be No_new, fM_new and SNR_new respectively
fM_new = 75/100*fM;
No_new = n*fM_new/4;
SNR_new = So / No_new;
disp('Changed SNR is '+string(SNR_new)+' dB');


