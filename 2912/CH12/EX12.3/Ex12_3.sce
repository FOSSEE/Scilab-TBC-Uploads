//  chapter 12
// example 12.3
// calculate the acceptance angle of an optical fibre
// page 360
// given
clear;
clc;
u1=1.563; // refractive index of core
u2=1.498; // refractive index of cladding
//calculate
NA=sqrt(u1^2-u2^2); // calculation of numerical aperture
printf('\nThe numerical aperture of the fibre is \tNA=%.4f',NA);
theta=asind(NA); // calculation of acceptance angle
printf('\nThe acceptance angle of the optical fibre is \t%.2f degree',theta);


