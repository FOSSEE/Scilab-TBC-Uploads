// Exa 9.15
clc;
clear;
close;
// given :
Nmax=1.3*10^6 // maximum electron density in electrons/cm^3
// formula : fc=9*sqrt(Nmax)
fc_khz=9*sqrt(Nmax) // critical frequency in Khz
disp(fc_khz/1000,"critical frequency in Mhz:")
