clc;
//page 495
//problem 9.6

//Baseband cutoff signal fM = 15 kHz
fM = 15 * 10^3;

//Carrier filter bandwidth is B = 60 kHz
B = 60 * 10^3;

//RMS frequency division Df_RMS = 30 kHz
Df_RMS = 30 * 10^3;

//Let a = Df_RMS/fM for substitution 
a = Df_RMS/fM;

//Let b = fM/B for substitution 
b = fM/B;

//Let input SNR 1 be I_SNR1 = 10 dB = 10
I_SNR1 = 10;

//Output SNR is O_SNR1
O_SNR1 = (3*(a^2)*I_SNR1)/(1+6*((2/%pi)^0.5)*I_SNR1*exp(-(b)*I_SNR1));

disp('Output SNR is '+string(10*log10(O_SNR1))+' dB');

//Let input SNR 2 be I_SNR2 = 20 dB = 100
I_SNR2 = 100;

//Output SNR is O_SNR2
O_SNR2 = (3*(a^2)*I_SNR2)/(1+6*((2/%pi)^0.5)*I_SNR2*exp(-(b)*I_SNR2));

//Solution given in the book is 13.5431 which is fallacious, the correct answer is 24.32444
disp('Output SNR is '+string(10*log10(O_SNR2))+' dB');

//Let input SNR 3 be I_SNR3 = 30 dB = 1000
I_SNR3 = 1000;

//Output SNR is O_SNR3
O_SNR3 = (3*(a^2)*I_SNR3)/(1+6*((2/%pi)^0.5)*I_SNR3*exp(-(b)*I_SNR3));

disp('Output SNR is '+string(10*log10(O_SNR3))+' dB');
