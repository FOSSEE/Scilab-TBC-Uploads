clc();
clear;
// To calculate the first three permitted levels of electron
h=6.626*10^(-34);
m=9.1*10^-31;   //mass in kg
L=1;    //width in armstrong
L=L*10^-10;   //width in m
//permitted electron energies En=(n^2*h^2)/(8*m*L^2)
//let X = h^2/(8*m*L^2)
X = h^2/(8*m*L^2);    //energy in J
XeV=X/(1.6*10^-19);   //energy in eV
//in the 1st level n1=1
n1=1;
E1=(n1^2)*XeV;    //energy in eV
printf("minimum energy the electron can have is %f eV",E1);
//in second level n2=2
n2=2;
E2=(n2^2)*XeV;    //energy in eV
//in third level n3=
n3=3;
E3=(n3^2)*XeV;    //energy in eV
printf("other values of energy are %f eV and %f eV",E2,E3);

//answers given in the book are wrong
