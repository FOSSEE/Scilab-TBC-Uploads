//  chapter 12
// example 12.4
// calculate refractive index of material of the core
// page 360-361
clear;
clc;
// given
NA=0.39; //numerical aperture of the optical fibre
d=0.05; // difference in the refractive index of the material of the core and cladding
//calculate
// since NA=u1*sqrt(2*d)
//we have u1=NA/sqrt(2*d)
u1= NA/sqrt(2*d); // calculation of refractive index of  material of the core
printf('\nThe refractive index of  material of the core is \tu1=%.3f',u1);


