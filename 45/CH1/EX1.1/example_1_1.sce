//Example 1.1
clc;
clear;
f= 5 * 10^6  ; //given
T=1/f; // caculating the time period .
H = 0.05 * 10^-6 / T ; 
printf('Time period of the waveform is T = %f us\n',T); //displaying results 
printf(" Duty cycle H = %f %%",H*100);
