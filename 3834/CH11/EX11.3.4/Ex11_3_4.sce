//Fiber-optics communication technology, by Djafer K. Mynbaev and Lowell L. Scheiner 
//Example 11.3.4
//windows 7
//Scilab version-6.0.0
clc;
clear;
//given

NEPnorm1=3.3E-12;//Bandwidth normalised NEP in W/sqrt(Hz) from 0-10MHz
BW1=10E+6;//Bandwidth for case 1 in Hz

x=NEPnorm1*sqrt(BW1);

NEPnorm2=30E-12;//Bandwidth normalised NEP in W/sqrt(Hz)from 10-125 MHz
BW2=115E+6;//Bandwidth for case 2 in Hz

y=NEPnorm2*sqrt(BW2);

NEP=sqrt(x^2+y^2);
mprintf("Noise-Equivalent power(NEP) = %.1f nW",NEP*1E+9);

Rmax=1.1;//Maximum value of responsivity of a photodiode in A/W at 1550nm
Rlambda=0.9;//Responsivity of a photodiode for given wavelength 1300nm in A/W
BW=125E+6;//Bandwidth  in Hz
NEPlambda1=NEPnorm2*(Rmax/Rlambda)*sqrt(BW);
mprintf("\nNoise-Equivalent power(NEP) for given wavelength lambda=1550nm = %.1f nW",NEPlambda1*1E9);


