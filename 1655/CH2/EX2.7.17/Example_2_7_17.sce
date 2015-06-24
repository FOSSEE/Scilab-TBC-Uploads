// Example 2.7.17  page 2.35

clc;
clear;

NA=0.25;     //Numericla aperture
d=45d-6;        //Diameter of core
lamda=1.2d-6;      //Wavelength

a=d/2;      //computing radius
v=2*3.14*a*NA/lamda;    //computing normalized frequency
Mg=v^2/4;       //computing mode volume for parabollic profile
Mg=round(Mg);
printf("\nNormalized Frequency is %.1f.\nTotal number of guided modes are %.d.",v,Mg);
printf("\n\nNOTE - In the question NA is given 0.22. However while solving it is taken as 0.25");

// answer in the book for number of guided modes is given as 216, deviation of 1.

printf("\nHence solving for NA = 0.22 also,");
printf("\n\nWhen NA=0.22");

NA=0.22;     //Numericla aperture
d=45d-6;        //Diameter of core
lamda=1.2d-6;      //Wavelength

a=d/2;      //computing radius
v=2*3.14*a*NA/lamda;    //computing normalized frequency
Mg=v^2/4;       //computing mode volume for parabollic profile
Mg=round(Mg);
printf("\nNormalized Frequency is %.1f.\nTotal number of guided modes are %.d.",v,Mg);


