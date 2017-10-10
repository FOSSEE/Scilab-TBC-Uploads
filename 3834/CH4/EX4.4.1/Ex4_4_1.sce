//Fiber-optics communication technology, by Djafer K. Mynbaev and Lowell L. Scheiner 
//Example 4.4.1
//windows 7
//Scilab version-6.0.0
clc;
clear;
//given

d=62.5E-6;//core diameter in SI units
D=125E-6;//cladding diameter in SI units
NA=0.275;//numerical aperture
lambda=1300E-9;//operating wavelength lambda in m

x=3.14*d*NA;
V=x/lambda;
PcladbyPtotal=2*sqrt(2)/(3*V)//Power carried by fiber cladding
mprintf("\nPower carried by fiber cladding = %.3f",PcladbyPtotal);

