//Tested on Windows 7 Ultimate 32-bit
//Chapter 12 Modulation and Demodulation Pg no. 394
clear;
clc;

//Given

df=75D3;//maximum frequency deviation
fm=20D3;//frequency of modulating wave in hertz

//Solution

BW=2*(df+fm);//bandwidth for FM wave
printf("Bandwidth required in FM wave transmission B = %d kHz",BW/10^3);
