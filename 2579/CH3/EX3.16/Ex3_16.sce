//Ex:3.16
clc;
clear;
close;
n=10;// number of isotropic elements
// d=y/4
// Do=2n*(d/y)
// Do=2n*(y/4y)=2n(1/4)
Do=2*n*(1/4);
D0=10*log(Do)/log(10);// Directivity in db
printf("the Directivity = %f dB", D0);