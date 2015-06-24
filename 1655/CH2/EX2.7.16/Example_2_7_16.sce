// Example 2.7.16  page 2.35

clc;
clear;

NA=0.25;     //Numericla aperture
d=45d-6;        //Diameter of core
lamda=1.5d-6;      //Wavelength

a=d/2;      //computing radius
v=2*3.14*a*NA/lamda;    //computing normalized frequency
Mg=v^2/4;       //computing mode volume for parabollic profile
Mg=round(Mg);
printf("\nNormalized Frequency is %.1f.\nTotal number of guided modes are %.d.",v,Mg);

//answer in the book for normalized frequency is 23.55, deviation 0.05
