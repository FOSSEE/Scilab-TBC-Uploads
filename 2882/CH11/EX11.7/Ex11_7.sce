//Tested on Windows 7 Ultimate 32-bit
//Chapter 11 Oscillators and Multivibrators Pg no. 368
clear;
clc;

//Given
//Figure 11.18

R1=1.5D3;//resistance R1 in ohms
R2=1.5D3;//resistance R2 in ohms
R3=12D3;//resistance R3 in ohms
R4=12D3;//resistance R4 in ohms
C1=0.068D-6;//capacitance C1 in farads
C2=0.068D-6;//capacitance C2 in farads

//Solution

T1=0.693*R3*C1;//time period of initial part of waveform in seconds
T2=0.693*R4*C2;//time period of final part of waveform in seconds
T=T1+T2;//total time period of waveform in seconds
f=1/T;//frequency of wave in hertz
printf("Frequency of oscillations of astable multivibrator f = %d Hz",f);
