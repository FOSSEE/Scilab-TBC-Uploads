//Tested on Windows 7 Ultimate 32-bit
//Chapter 9 Frequency Response of Amplifier Pg no. 316
clear;
clc;

//Given

fch1=5D3;//higher cut-off frequency in hertz
fcl1=20;//lower cut-off frequency in hertz

//Solution

BW=fch1-fcl1;//bandwidth in hertz
printf("BW = %.f Hz",BW);

