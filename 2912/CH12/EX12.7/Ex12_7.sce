//  chapter 12
// example 12.7
// calculate numerical aperture and acceptance angle of the symmetrical fibre
// page 361
clear;
clc;
// given
u1=3.5; // refractive index of core
u2=3.45; // refractive index of cladding
u0=1; // refractive index of the air
//calculate
NA=sqrt(u1^2-u2^2); // calculation of numerical aperture
NA=NA/u0;
printf('\nThe numerical aperture of the fibre is \tNA=%.2f',NA);
alpha=asind(NA); // calculation of acceptance angle
printf('\nThe acceptance angle of the optical fibre is \t%.2f degre',alpha);

