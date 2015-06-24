//clc();
clear;
//To calculate the wavelength and energy of X-ray beam
theta=27.5;      //diffraction angle in degrees
n=1;           //diffracted order
h=1;
k=1;
l=1;
H=6.625*10^-34;      //plancks constant
c=3*10^10;           //velocity of light
a=5.63*10^-10;         //lattice constant in m
d=a/(sqrt(h^2+k^2+l^2));
lambda=(2*d*sind(theta))/n;
printf("wavelength in metres is");
disp(lambda);
E=(H*c)/lambda;
E=E/(1.6*10^-19);         //converting from J to eV
printf("energy of X-ray beam in eV is");
disp(E);

//answer in book is wrong
