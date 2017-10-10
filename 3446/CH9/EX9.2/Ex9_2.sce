// Exa 9.2
// To calculate amplitude A of a carrier signal.

clc;
clear all;

Pe=10^-6;//Probability of error
No=10^-10;  // PSD in W/Hz
R=100*10^3;  //data rate in bps

//solution
disp("From Example 9.1, Eb/N0= 10.54dB (11.32) for Pe=10^-6 ");
//Therefore
Eb_No=11.32; //From Exa. 9.1
// Eb/No = A^2/(2*No*R);
A=sqrt(2*No*(Eb_No)*R);
printf(' Amplitude of a carrier signal is %.3f mV',A*1000);
    
