//Fiber-optics communication technology, by Djafer K. Mynbaev and Lowell L. Scheiner 
//Example 2.3.2
//OS=Windows 10
////Scilab version Scilab 6.0.0-beta-2(64 bit)
clc;
clear;

//given
Ep=2.5*1.602*1e-19;//energy in V
c=3E8;//velocity of light in m/s
h=6.6261E-34;//Planck's constant in SI units

lambda=(c*h/Ep);//lambda in meter
mprintf("Wavelength is=%.1f nm. \nIt will emit green colour.",lambda*1e9);//Multiplication by 1e9 to convert the unit from m to nm
//the answer vary due to rounding
