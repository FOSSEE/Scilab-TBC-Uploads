// Example 2.8.9
clc;
clear;
n1=1.54;        //refractive index of core
n2=1.5;     //refractive index of cladding
a=25d-6;        //Radius of core
lamda=1.3d-6;      //Wavelength
NA=sqrt(n1^2-n2^2);
v=2*3.14*a*NA/lamda;    //computing normalized frequency
v=round(v);
Mg=v^2/4;       //computing mode volume for parabollic profile
Mg=round(Mg);
lamda_cut_off=v*lamda/2.405;    //computing cut off wavelength
lamda_cut_off=lamda_cut_off*10^6;
printf("\nNormalized Frequency is %.d.\nTotal number of guided modes are %.d.\nCut off wavelength is %.1f micrometer.",v,Mg,lamda_cut_off);
