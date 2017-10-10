clear;
clc;
printf("\nEx1.16\n");
//page no.-26
//given
//For <111> planes
h=1;
k=1;
l=1;
n=1;.....//order
theta=30;......//angle in degrees
lambda=1.75;....//wavelength in angstrom

//we know d=a/sqrt((h^2)+(k^2)+(l^2))........distance between planes

//also by bragg's law 2*d*sind(theta)=n*lambda......put d values in this

a=(n*lambda*sqrt((h^2)+(k^2)+(l^2)))/(2*sind(theta))......//interatomic spacing in angstrom

printf("\nInteratomic spacing is 3.031 angstrom\n"); 


