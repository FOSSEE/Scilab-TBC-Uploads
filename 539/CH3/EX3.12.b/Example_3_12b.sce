//Diffraction Angle Computations

clear;
clc;

printf("\tExample 3.12\n");

a=0.2866;           //Lattice parameter in nm
h=2;
k=2;
l=0;

d_hkl=a/(sqrt(h^2+k^2+l^2));

printf("\n\tPart B");
lambda=0.1790;     //Wavelength in nm
n=1;

theta=asind(n*lambda/(2*d_hkl));
printf("\nDiffraction angle is %.2f degree\n",2*theta);

//End