//Fiber Optics Communication Technology, by Djafer K. Mynbaev and Lovell L.scheiner
//Windows 8
//Scilab version- 6.0.0
//Example 9.1.1
clc;
clear ;
//given

lambdap=850;//Peak wavelength in nm
n=0.01;//quantum efficiency is 1%
Ep=1248/lambdap;//energy of photon in eV
I=50;//current supposed to be in mA

P=n*Ep*I;
mprintf("Power radiated by LED = %.3f mW",P);//answer vary due to rounding
