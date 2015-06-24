// Example 5.13, page no-199
clear
clc

l=128       //no of Quantizing levels
fs=10000     //sampling frequency in Hz
n= log2(l)
t=1/(n*fs)
printf("Number of bits per sample (n) = %.0f\n Time duration of one bit of binary encoded signal is  %.3f micro second",n,t*10^6)
