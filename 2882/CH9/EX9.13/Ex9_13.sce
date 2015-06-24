//Tested on Windows 7 Ultimate 32-bit
//Chapter 9 Frequency Response of Amplifier Pg no. 316
clear;
clc;

//Given

fT=150D6;//transition frequency in hertz
Gv_mid=25;//midband voltage gain

//Solution

BW=fT/Gv_mid;//bandwidth in hertz
printf("BW = %.f MHz",BW/10^6);
