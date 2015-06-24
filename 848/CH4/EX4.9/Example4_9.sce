//clear//
//Caption:Calcualtion of number of half-wavelengths and wavelength spacing between lasing modes
//Example4.9
//page161
clear;
clc;
close;
Lambda = 900e-09;// wavelength of ligth emitted by laser dioda
L = 300e-06;// length of laser chip
n = 4.3; //refractive index of the laser material
m = 2*L*n/Lambda;//number of half-wavelengths
delta_Lambda = (Lambda^2)/(2*L*n);//wavelength spacing
disp(m,'number of half-wavelengths spanning the region between mirror surfaces')
disp(delta_Lambda,'spacing between lasing modes is')
//Result
//number of half-wavelengths spanning the region between mirror surfaces    2866.6667  
//spacing between lasing modes is   3.140D-10  
