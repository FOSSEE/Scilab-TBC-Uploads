//  chapter 12
// example 12.2
// calculate numerical aperture and the acceptance angle of an optical fibre
// page 360
clear;
clc;
// given
u1=1.55; // refractive index of core
u2=1.50; // refractive index of cladding
//calculate
d=(u1-u2)/u1; // calculation of fractional index change
NA=u1*sqrt(2*d); // calculation of numerical aperture
printf('\nThe numerical aperture of the fibre is \tNA=%.3f',NA);
theta=asind(NA); // calculation of acceptance angle
printf('\nThe acceptance angle of the optical fibre is \t%.1f degree',theta);
