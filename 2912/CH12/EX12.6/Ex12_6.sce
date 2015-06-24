//  chapter 12
// example 12.6
// calculate refractive index of the core and cladding material of a fibre
// page 361
clear;
clc;
// given
NA=0.33; // numerical aperture
d=0.02; // difference in the refractive index of the core and cladding of the material
//calculate
// since NA=u1*sqrt(2*d)
// therefore we have
u1=NA/sqrt(2*d); // calculation of refractive index of the core
// since d=(u1-u2)/u2
// therefore we have
u2=(1-d)*u1; // calculation of refractive index of the cladding
printf('\nThe refractive index of the core is \tu1=%.1f',u1);
printf('\nThe refractive index of the cladding is \tu2=%.3f',u2);
// Note:  In the question, it is given that NA=0.33 but in the book NA=0.22 has been used in the solution. That's why answer in the book is different from that of generated from the code
