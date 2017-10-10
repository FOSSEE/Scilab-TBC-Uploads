//Fiber-optics communication technology, by Djafer K. Mynbaev and Lowell L. Scheiner 
//Example 3.3.1
//windows 7
//Scilab version-6.0.0
clc;
clear;
//given
d=62.5E-6;//core diameter in SI units
NA=0.275;//numerical aperture
lambda=1300E-9;//operating wavelength lambda in m

x=3.14*d*NA;

V=x/lambda;

N=(V^2)/4;

mprintf("Number of modes for graded index fiber = %.0f",N);
