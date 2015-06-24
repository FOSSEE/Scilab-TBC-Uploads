// Example 7.7, page no-272
clear
clc

Ta=  40        //Antenna Noise temperature
Ti=290         //Reference temperature in K
T=50          // Effecitve input noise temperatuire
Tf=Ti
L=(Ta-Tf)/(T-Tf)
L=ceil(L*10^4)/10^4
printf("Loss factor = %.4f = %.3f dB",L,10*log10(L))
