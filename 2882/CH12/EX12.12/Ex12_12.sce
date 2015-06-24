//Tested on Windows 7 Ultimate 32-bit
//Chapter 12 Modulation and Demodulation Pg no. 394
clear;
clc;

//Given

df=6D3;//maximum frequency deviation
fm=1.5D3;//frequency of modulating wave in hertz
Pc=25;//carrier power in watts
J=[-0.4 -0.07 0.36 0.43 0.28 0.13 0.05 0.02];//Bessel function values required for given problem's modualtion index

//Solution

B=df/fm;//modulation index
PT=Pc*(J(1)^2+2*(J(2)^2+J(3)^2+J(4)^2+J(5)^2+J(6)^2+J(7)^2+J(8)^2));//total carrier power in watts
printf("Total carrier power PT = %.f Watts",PT);
