// Example 11.3, Page No-460
clear
clc

n=4
R=10000
Vr=10
//Part A
reso=Vr*10^6/(R*2^n)
printf('\nResolution of 1 LSB= %.1f uA', reso)

//Part B
k=bin2dec('1101')
Io=reso*k/1000
printf('\nOutput Io for digital input 1101= %.4f uA', Io)

