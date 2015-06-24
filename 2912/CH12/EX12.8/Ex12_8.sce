//  chapter 12
// example 12.8
// calculate numerical aperture and acceptance angle of an optical fibre
// page 361-362
clear;
clc;
// given
u1=1.48; // refractive index of core
u2=1.45; // refractive index of cladding
//calculate
NA=sqrt(u1^2-u2^2); // calculation of numerical aperture
printf('\nThe numerical aperture of the fibre is \tNA=%.3f',NA);
theta=asind(NA); // calculation of acceptance angle
printf('\nThe acceptance angle of the optical fibre is \t%.2f degree',theta);
// Note: there is slight variation in the answer due to round off
