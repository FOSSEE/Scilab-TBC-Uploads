//  chapter 12
// example 12.1
// calculate fractional index change for a given optical fibre
// page 360
clear;
clc;
// given
u1=1.563; // refractive index of core
u2=1.498; // refractive index of cladding
//calculate
d=(u1-u2)/u1; // calculation of fractional index change
printf('\nThe fractional index change for a given optical fibre is %.4f',d);


