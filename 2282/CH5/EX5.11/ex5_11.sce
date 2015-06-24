// Example 5.11, page no-199
clear
clc

fm=3200        //highest frequency component in message signal
k=48000        //channel capacity in b/s
fs=2*fm
n=k/fs
n=floor(n)
printf("n = %.0f\n L = 2^7 = %.0f\n fs = %.3f kHz",n,2^7,(k/7)/1000)
