// Example no 8.2
// To compute transmission bit rate, average and peak signal to quantization noise ratio
// Page no. 424

clc;
clear all;

// Given data
fs=8*10^3;                                    // Sampling frequency in Hz
n=8;                                          // Number of bits per sample
stepsize=10*10^-3;                            // Time after which step size is recomputed
overhead=5;                                   // Number of overhead bits

N=fs*n;                                       // Number of information bits pe second
Toverhead=overhead/stepsize;                  // The number of overhead bits/second

// Effective transmission bit rate
bitrate=N+Toverhead;                         // Transmission bit rate in bps

// Peak signal to quantization noise ratio
PSQNR=6.02*n+4.77;                           // Peak signal to quantization noise ratio in dB

// Average signal to quantization noise ratio
ASQNR=6.02*n;                                // Average signal to quantization noise ratio in dB

// Displaying the result in command window
printf('\n Effective transmission bit rate = %0.1f kbps',bitrate*10^-3);
printf('\n Peak signal to quantization noise ratio = %0.2f dB',PSQNR);
printf('\n Average signal to quantization noise ratio = %0.2f dB',ASQNR);
