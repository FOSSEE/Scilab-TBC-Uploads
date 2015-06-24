clc;
//page 436
//problem 8.1

//Given frequency range fc= 1MHz to fc = 1.0005Mhz
//Single side message bandwidth is fM
fM= (1.0005 - 1)*10^6;
disp('Message bandwidth is '+string(fM)+' Hz');
//The textbook contains a calculation error here. The calculated fM in the textbook is 500kHz instead of 5kHz, following which all the solutions are erroneous  

//Given input signal strength Si= 1mW
//Let output signal strength be So
//So=Si/4
Si= 10^(-3);
So= Si/4;
disp('Signal output strength is '+string(So)+' dB');

//Given Power Spectral Density n = 10^-9 W/Hz
//Let output noise strength be No
n= 10^-9;
No= (n*fM)/4;
disp('Output Noise Strength is '+string(No)+' dB');

//Let SNR at filter output be SNR
SNR= So / No;
disp('Output SNR is '+string(SNR)+' dB');

//By reduction of message signal Bandwidth the Output Noise strength changes
//Let the new output noise strength, bandwidth and SNR be be No_new, fM_new and SNR_new respectively
fM_new = 75/100*fM;
No_new = n*fM_new/4;
SNR_new = So / No_new;

disp('Changed SNR is '+string(SNR_new)+' dB');


