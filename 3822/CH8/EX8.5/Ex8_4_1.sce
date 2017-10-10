
//OptoElectronics and Fibre Optics Communication, by C.K Sarkar and B.C Sarkar
//Example 6.4
//OS=Windows 10
////Scilab version Scilab 6.0.0-beta-2(64 bit)
clc;
clear;

//given
BER=1e-6;// a bit error
T=400;//temperature in kelvin
Rl=50;//load resistance in ohms
R=0.4//responsivity in A/W
K=1.38*1e-23//boltzman constant in SI units
B=1e7//bandwidth in Hz
u=4*(K)*T*B;
is=9.56*sqrt(u/Rl);//current in Ampere
Pmin=is/R;//minimum power required to maintain a bit error
mprintf("The minimum power required to maintain a bit error=%.3f uW",Pmin*1e6);
//The answer vary due to rounding
// the question no. in book is wrong there is repeat of 8.4
