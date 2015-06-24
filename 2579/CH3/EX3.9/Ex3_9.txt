//Ex:3.9
clc;
clear;
close;
n=20;// number of isotropic array
// d=y/8, where y is wavelength
// then, D=2n(d/y)=2n((y/8)(1/y))=2n(1/8)
D=2*n*(1/8);// directivity of a linear broad-side array
printf("The directivity of a linear broad-side array = %d dimensionless", D);