clc
//Chapter 10:Frequency Synthesizers
//Example 10.11 page no 446
disp('A signal sideband power is -140dB/Hz ')
N=5*10^6//frequency of reference oscillator 
M=5*10^3//count
No=-140+10*log10((N/M)^2)//the output noise power due to the reference oscillator 
mprintf('The single sideband noise power at a frequency offset of 0.5KHz is %d dB/Hz ',No)
