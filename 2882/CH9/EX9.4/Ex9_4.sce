//Tested on Windows 7 Ultimate 32-bit
//Chapter 9 Frequency Response of Amplifier Pg no. 301
clear;
clc;

//Given

Gv_dB=75;//voltage gain of amplifier in dB units

//Solution

Gv=10^(0.1*Gv_dB);//voltage gain magnitude
printf("P2/P1 = %.f",Gv);

