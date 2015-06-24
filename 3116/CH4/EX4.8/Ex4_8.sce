

clc
//given that
a = 0.2866 // lattice parameter in nm
h = 2 // component of set of plane
k = 2// component of set of plane
l = 0// component of set of plane
n = 1 // order of detraction
lambda = 0.1790 // wavelength of light in nm

printf("Example 4.8\n")
d_hkl=a/(sqrt(h^2+k^2+l^2))
theta=asind(n*lambda/(2*d_hkl))
printf("\n Answer A:")
printf("\n Interplanar spacing is %.4f nm.",d_hkl)
printf("\n\n Answer B:")
printf("\n Diffraction angle is %0.2f degree.\n",2*theta);
// Answer in book is 124.26 degree. It is so because of consideration of different number of significant figures in calculation.

