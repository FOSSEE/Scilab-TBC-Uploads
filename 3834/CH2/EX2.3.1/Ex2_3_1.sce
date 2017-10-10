//Fiber-optics communication technology, by Djafer K. Mynbaev and Lowell L. Scheiner 
//Example 2.3.1
//OS=Windows 10
////Scilab version Scilab 6.0.0-beta-2(64 bit)
clc;
clear;

//given
lambda=650E-9;//wavelength in meter
h=6.6E-34;//Planck's constant in SI units
c=3E8;//velocity of light in m/s

Ep=(h*c/lambda);//energy of single photon in V
E=1e-3;///total energy in joules
N=(E/Ep);//number of photos
mprintf("\n Number of photons=%.1f x10^15 ",N/1e15);//division by 1e15 to convert the unit to x10^15
