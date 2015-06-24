//Interplanar Spacing

clear;
clc;

printf("\tExample 3.12\n");

a=0.2866;           //Lattice parameter in nm
h=2;
k=2;
l=0;

printf("\n\tPart A");
d_hkl=a/(sqrt(h^2+k^2+l^2));
printf("\nInterplanar spacing is %.4f nm\n",d_hkl);

//End