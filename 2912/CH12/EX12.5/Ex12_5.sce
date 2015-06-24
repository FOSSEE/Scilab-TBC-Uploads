//  chapter 12
// example 12.5
// calculate numerical aperture,acceptance angle and the critical angle of the optical fibre
// page 361
clear;
clc;
// given
u1=1.50; // refractive index of core
u2=1.45; // refractive index of cladding
//calculate
d=(u1-u2)/u1; // calculation of fractional index change
NA=u1*sqrt(2*d); // calculation of numerical aperture
printf('\nThe numerical aperture of the fibre is \tNA=%.3f',NA);
theta_0=asind(NA); // calculation of acceptance angle
printf('\nThe acceptance angle of the optical fibre is \t%.2f degree',theta_0);
theta_c=asind(u2/u1); // calculation of critical angle
printf('\nThe critical angle of the optical fibre is \t%.1f degree',theta_c);

