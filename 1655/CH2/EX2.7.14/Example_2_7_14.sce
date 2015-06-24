// Example 2.7.14  page 2.34

clc;
clear;

NA=0.2;     //Numericla aperture
d=50d-6;        //Diameter of core
lamda=1d-6;      //Wavelength

a=d/2;      //computing radius
v=2*3.14*a*NA/lamda;    //computing normalized frequency
Mg=v^2/4;       //computing mode volume for parabollic profile
Mg=round(Mg);
printf("\nNormalized Frequency is %.1f.\nTotal number of guided modes are %.d.",v,Mg);

//answer in the book for guided modes is 247, deviation of 1.
