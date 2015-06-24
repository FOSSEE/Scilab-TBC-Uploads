// Example 2.7.9  page 2.28

clc;
clear;

delta=1/100;    //relative refractive index
n1=1.5;     //refractive index of core
M=1100;     //Guided modes
lamda=1.3d-6;       //wavelength

v=sqrt(2*M);    //computing normalized frequecy
a=(v*lamda)/(2*3.14*n1*sqrt(2*delta));        //computing radius of core
d=a*2;
a=a*10^6;
d=d*10^6;

printf("\nNormalize frequency is %.1f.\nCore radius is %.2f micrometer.\nCore diameter is %.1f micrometer.",v,a,d);
printf("\nCalculation error in the book while calculating radius and diameter.");

//calculation error in the book.
//answers in the book - 
//Core radius is 46.18 micrometer.(incorrect)
//Core diameter is 92.3 micrometer.(incorrect)
