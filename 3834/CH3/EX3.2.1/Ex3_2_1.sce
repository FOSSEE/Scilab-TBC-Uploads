//Fiber Optics Communication Technology, by Djafer K. Mynbaev and Lovell L.scheiner
//Windows 7
//Scilab version- 6.0.0
//Example 3.2.1
clc;
clear;
//given

A=0.5;//attenuation in dB/Km
Pin=1E-3;//input power in milli watts
L=15;//length in kilometers

a=[(-A*L)/10];
b=10^(a);
Pout=(Pin*b)*1E3;
mprintf("ouput power is=%.3f mW",Pout);
